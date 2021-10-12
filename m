Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5D28C42A419
	for <lists+blinux-list@lfdr.de>; Tue, 12 Oct 2021 14:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634040773;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I32oVomBKPax9HDXjTh60NpWRIGN/vuNB14+tjOCYJk=;
	b=fmLFAf/f8ieDfUUfcNNODXn+vshX1+RC/T7JE9+Oao+8ez6isP60JXTfbXYD48m1pOvPBX
	AxXtzojpGZew3xUsV42OENYefSpk98DR33/ooUAGNEHKBB7+mdquvjQzInXmoeqGZ5X7ak
	FEttQLPj61TjNLkS8bG/Gsff81yX/CA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-102-LdViZYdSPf6hQIWJErCUNA-1; Tue, 12 Oct 2021 08:12:49 -0400
X-MC-Unique: LdViZYdSPf6hQIWJErCUNA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8DA71966321;
	Tue, 12 Oct 2021 12:12:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4886C69214;
	Tue, 12 Oct 2021 12:12:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE8A01809C81;
	Tue, 12 Oct 2021 12:12:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CCCUUB014999 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 08:12:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2F63A40CFD10; Tue, 12 Oct 2021 12:12:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29EE640CFD05
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 12:12:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D37F1811E7A
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 12:12:29 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-587-t-qacdI1PIemZhDAqP7Dww-1; Tue, 12 Oct 2021 08:12:28 -0400
X-MC-Unique: t-qacdI1PIemZhDAqP7Dww-1
Received: by mail-qk1-f181.google.com with SMTP id ay35so10366483qkb.10
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 05:12:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=pNNWncLSk6cCM0qVEAlYDuKrekgtvJHkLqVnPIKCrps=;
	b=31h1M8pxzEwww62lM351Ahj/z2+RyowMQ6f45tYhn6IARdnWW9blRlvEYHD1s97Jvi
	UhI2MeXhHzg4koLQSK9I4aJ1y3Ir+cz7LYc3MEjtOkYmBnRBz0sg+0jO9G9NQjhGqk3p
	7VCT87n/XDL0s5nhLMDGhHMkZuaC4sRUMKa5TsKgOx5ripRoaxzP9w7GhYcnHrcv0mW0
	3oLaa58c13nw/dawMigkgkRVhkcRvgfoUEuUz6NHWNoCn3qkCpLD5jXCQEFvPq2RQOxH
	my/wJmd12tndyemCapesUK0LX4gZ4HPO27BGb2iWbS+Z4demnoMJRKyN2NZC2NWYNmKy
	XEYA==
X-Gm-Message-State: AOAM531NMQnjSTfBJnWoZ0B3DIlQRF7bR45eVqcz4+rmcQRV0aryWBOt
	/LyHWOchoV73kX0unbbQy1KhTTYW5GU=
X-Google-Smtp-Source: ABdhPJyWGNpFs3i5qd3CaFw7JpmMGGc+CI6xFHKUm3iZbnVI7fXzBcqi8IdUZMKLEU+NHHTtoryCMg==
X-Received: by 2002:ae9:dd85:: with SMTP id
	r127mr18897146qkf.173.1634040747805; 
	Tue, 12 Oct 2021 05:12:27 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	s14sm6968177qtc.32.2021.10.12.05.12.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 Oct 2021 05:12:27 -0700 (PDT)
Message-ID: <830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
Date: Tue, 12 Oct 2021 08:12:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
In-Reply-To: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

A huge +1 for Fedora MATE. I have it running on two computers here, one 
is not mine, and it works great. Orca comes with it, and you can run a 
full install after pressing alt+f2 to open the run window and then 
entering the word orca. Wifi generally works out of the box, though the 
NetworkManager applet that controls it doesn't tell you what it is. 
Still, you can just hold the alt and control keys and double tap the tab 
key to get to the top panel, then shift tab past the toggle button and 
press the enter key to bring up the menu that has your wifi connections. 
There's not much more to tell other than it's a great OS, not just for 
learning, but for daily use, and one of the computers in the house that 
is running it is even being used for gaming and live streaming. If you 
need to dig deeper into the guts of the system, it allows for that as 
well. I for one highly recommend the Fedora MATE spin.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

