Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 921BB440EEC
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 15:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635692356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=moA6gWItcWq5sPwLWj8Qrel00Mz0MrVjy3KuDb3014c=;
	b=M+/aabc1hQrAuen/vDSV108NwMk2grMb6P+pGI07ltTOUjETupwFlDRzgmWYDhOABfTAtU
	ijNdRbgESQJ+BAHauhtevZm+uxDwx2g4smSiQ8oM7rp77MCD9uYppGsiqGK3ati3uiVUt3
	NN+Satvu3lrJniadszJZK55Bh0Ic7/0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-551-JD9jwryYPhCcNEbqZTesTA-1; Sun, 31 Oct 2021 10:59:12 -0400
X-MC-Unique: JD9jwryYPhCcNEbqZTesTA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8892F8026AD;
	Sun, 31 Oct 2021 14:59:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4C04100763D;
	Sun, 31 Oct 2021 14:59:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 72E954A703;
	Sun, 31 Oct 2021 14:59:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VEwuh6005450 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 10:58:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8A3882166B26; Sun, 31 Oct 2021 14:58:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84BF12166B25
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 14:58:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D38C7800883
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 14:58:50 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-411-kVmtj9dQPz25dVjbgkF3pg-1; Sun, 31 Oct 2021 10:58:49 -0400
X-MC-Unique: kVmtj9dQPz25dVjbgkF3pg-1
Received: by mail-qt1-f182.google.com with SMTP id h4so13153214qth.5
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 07:58:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=gmhaXaQMBV/jKYmG4s9w+E2B3iiXBoiQwLC3A8+5OUU=;
	b=gusPSpab9i2nOmtgebmefcy8ZaxCFYAbenpLs+UTLF2f1+fSMThkfhYe3N3TIJAtt8
	pZEs5Phe433nyaArMy1u4ENSwglMAIp8biZztbDj/YsiEIF3BHJm+DyFkwzpzsq7iwY4
	MxK2mUSxrLttD5k5sq/YD4BKzKr/YTyO3q3lI0v6UuK7rp4LvRSjBxfI4I3OljsdCIdJ
	Bgq2sNbGZHtWjfzns3wCU9AH9hOaufpv7Tt8YTSDV3SyzXJ+/qz2s4BFASpIxbY1u2+E
	mdD1sGe72uUmYU8T1AjSzQ6Q03lCoKdogOQHBRoxwgfYDo6fTR18nT13JfYgj2jM2xD2
	4GiQ==
X-Gm-Message-State: AOAM532vUDuE4IVfiHcoPpOHPV3h2lGN1D3p9ausrk8Gx7vpSuovFDyh
	B+I6Ew7kP0GcRNCxgsyXerH5NRJ0R1k=
X-Google-Smtp-Source: ABdhPJxFWDSU8DxqmcG1TBnZrKeS1n8HpWAxk3S5L3h97654vS3FLh9X/XjT4B9LkhdIL5d5pMXHag==
X-Received: by 2002:a05:622a:450:: with SMTP id
	o16mr7853966qtx.185.1635692328400; 
	Sun, 31 Oct 2021 07:58:48 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	bs34sm8250065qkb.97.2021.10.31.07.58.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 31 Oct 2021 07:58:47 -0700 (PDT)
Message-ID: <1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
Date: Sun, 31 Oct 2021 10:58:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: Beginner's Guide To The Linux Terminal
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
In-Reply-To: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As I understand things, the alt+control+t keyboard shortcut is 
predefined in I believe Ubuntu and derivatives, but it is not a default 
shortcut configuration. It is however possible to define a terminal 
shortcut from within the keyboard shortcut configuration tool of your 
chosen desktop environment. Most of the time, you can set this by 
opening your keyboard shortcuts either from a preferences menu or the 
control center, usually found under hardware, and look for the desktop 
shortcut that says "run a terminal." Mine is disabled because I haven't 
yet configured it. You can press the enter key to edit the shortcut and 
then press the key combination you want to use, assuming it doesn't 
conflict with anything already set. Alt+control+t is usually left open, 
so it should work on any system.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

