Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E8E3341854D
	for <lists+blinux-list@lfdr.de>; Sun, 26 Sep 2021 02:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632615918;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BF/draGbFXkDF4Wb+cNtslE/qlMRPjUvN6eRvIflCbo=;
	b=gCdgRb3Ajq/6T46tkYvpkB6T1a/1N15YpX3VAw5YnhwF2zq1DM++0DJaBLRag8ZattkkJ4
	yQHn4JdrqUfRf93roDckkN8bbXGkwvBh/PTmkGVeW+6fJsIf8lePEIqx/gjVSOioWur1tk
	a13zF/+TUiYv9dB7RE0NtqrmcoeZIYA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-RY01rk73OiWZtoEA_h04Yg-1; Sat, 25 Sep 2021 20:25:16 -0400
X-MC-Unique: RY01rk73OiWZtoEA_h04Yg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E54E21808315;
	Sun, 26 Sep 2021 00:25:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6775608BA;
	Sun, 26 Sep 2021 00:25:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BDB154EA2A;
	Sun, 26 Sep 2021 00:24:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18Q0NFpt028189 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 25 Sep 2021 20:23:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9EAF62167819; Sun, 26 Sep 2021 00:23:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 996112167813
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 00:23:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2DE08007B1
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 00:23:11 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-558-bICnY0jEPNCegxBzDloRXA-1; Sat, 25 Sep 2021 20:23:10 -0400
X-MC-Unique: bICnY0jEPNCegxBzDloRXA-1
Received: by mail-qt1-f181.google.com with SMTP id f15so369952qtv.9
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 17:23:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:from:to:references:in-reply-to
	:content-transfer-encoding;
	bh=Hl7fO5TSb2rgC6gVX90XdZMABl2Lgv3Qk6simhbMzCw=;
	b=SU8nKR2iJCHXG6oIJV72n+8JfKD23wAhn1GRRYnL7sPCl05AWP+RxGkTBSi+2sy4s0
	DZS2oGzh5yNla6LpRn60PBHzo9OTi4PKmWVAf6EqWNCzuoA6TvFTP8ppZkWqT3KTqncB
	QFTEg8S/hhf62ncMVb68i1Egv3COVx7esE89xJ8TFyLEGHk7AwXd/p2MiCxrbHMdM3JO
	2ffpPBaSC5cPrNCIKdhZVb0XE4vZo8ePIo2J7hKWjbwIEaV1/Pj/1gb9dwwAc+zUS0zD
	M07qF2QQup04UxeF0z+c9OrFONHgD62QrS8cP5thgyiGcFzQfplAVTb1R9KaGIllakku
	v2Iw==
X-Gm-Message-State: AOAM533iON5yEJAjdDW6VXfK1oRwbEJPm1fSMkDvYii1C/J57qoCI+n+
	u9qdD4YHvK8lifd1T531Tg5ah8RAqlc=
X-Google-Smtp-Source: ABdhPJwQVA4tqgu4N+fmOlrvnb/fxKefM9x5IfNTzy9qp3c+Zltq+D9kb7ddTHpkupQNI8s/2th4yA==
X-Received: by 2002:ac8:74a:: with SMTP id k10mr7960557qth.17.1632615789491;
	Sat, 25 Sep 2021 17:23:09 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	u13sm8128193qtg.29.2021.09.25.17.23.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 25 Sep 2021 17:23:09 -0700 (PDT)
Message-ID: <6dd08e29-01a1-b179-c305-515772fe849d@gmail.com>
Date: Sat, 25 Sep 2021 20:23:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Did Mate change the Brisk menu?
To: blinux-list@redhat.com
References: <3dda2919-2447-9f48-21ed-49c832ce4ff7@gmail.com>
	<e07cd8e4-5326-2d85-1cc6-997cacc80504@gmail.com>
In-Reply-To: <e07cd8e4-5326-2d85-1cc6-997cacc80504@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On my new Solus-MATE installation in my vm, if I press alt+f1 to open 
the menu, instead of the traditional MATE menu bar with the system, 
applications and places menus, I see a single menu, in which system and 
places are submenus and log out and shut down are at the bottom. Is this 
the Brisk menu? I just installed this and updated it today and I see 
this menu structure both before and after the update. It appears it has 
not changed.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

