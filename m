Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AED463D54
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 19:00:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638295232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vzL/8QlHNOxCN0kSVh5qFXOInXwHSpoC0NExYIQT5ko=;
	b=OJlm3eqt2Bq/JOzoGV5l3kobTXAuxcDNFilTVLmQ/7Qd6IZcU/7eXWeG56JxJyiIj+c9Fw
	vbG5yvfYO1PG7Mt0y3fqpz7Kp1XjW4BJ68CsdU7n0BnHy0TrcXNYrX4zThZiF3Foszc8/5
	ATF0ugs6t4RFJ+wTu6fVT4YcNW4RyrA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-113-5IyCewpzO_yGNLDUSJSBtg-1; Tue, 30 Nov 2021 13:00:28 -0500
X-MC-Unique: 5IyCewpzO_yGNLDUSJSBtg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E793102C888;
	Tue, 30 Nov 2021 18:00:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F346B10016F7;
	Tue, 30 Nov 2021 18:00:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DF534CA93;
	Tue, 30 Nov 2021 18:00:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHxbbl012521 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:59:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CD90251E1; Tue, 30 Nov 2021 17:59:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7C0351DC
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:59:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFCEC80A0AF
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:59:33 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-487-J2JiBVjpNwCMJoSuRnuXOg-1; Tue, 30 Nov 2021 12:59:31 -0500
X-MC-Unique: J2JiBVjpNwCMJoSuRnuXOg-1
Received: by mail-qt1-f171.google.com with SMTP id p19so21016648qtw.12
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:59:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ImYG65+xWad8t9OmUNY72T7yqVxySQZ37WKF1RT0oWI=;
	b=zhYPavUn1xQD7vMcOJ1RdwiFE27Q/HwaK5eJyUDVE0OPaj1BnC+6sAPdugy7vHNMQt
	GAHo9+msMWN5NETm36b8QutBl9dFS7LSH39OrFMWNryy2clL6AVP0ETSmVxnkRxnKk4+
	KYmlc/mGmuHL6S1BjL6330TcGbVgNK2/3aitJXPnUpFSROH1dot6rtSGHCOegrChTLj/
	pGCAtLJYOvlCT7vATDLSdJ2esc71fIt6vjeadT0khA7Mf/AfGaE2UeFUtNauoWaVUAsI
	GHXkvjV9Mv8yEn57HKY6N9V+o3z2PaX+/Qokslj6C8jEGoIlBTwD3HyB7sdWu8sp71en
	t3mA==
X-Gm-Message-State: AOAM531ayfoEsKVu6wMd2y14qruhWKhnD4CEDNv+CSlRcRhh35mGHRZi
	h+JFJeqm3zmlbz9yTNjQNWg9azZhAWc=
X-Google-Smtp-Source: ABdhPJykqnpPmNP5MRrGeXsMgBWU7EeWvKeAetYTTTDItjdJ+cyEtHAQWWrZMwCWIg7gR9TMFAePGw==
X-Received: by 2002:a05:622a:189:: with SMTP id
	s9mr1068102qtw.352.1638295171337; 
	Tue, 30 Nov 2021 09:59:31 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	j22sm10594023qko.68.2021.11.30.09.59.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 09:59:30 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<61abb084-c69c-17f5-dc0e-fe6447caf720@gmail.com>
Message-ID: <6029d348-4a5d-9371-38a7-b2a940901b92@gmail.com>
Date: Tue, 30 Nov 2021 12:59:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <61abb084-c69c-17f5-dc0e-fe6447caf720@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Frankly, at this point I do not understand most of the points in the discussion, 
but that is due to lack of knowledge on my part about the working of Linux.

Not really. It has little to do with a lack of knowledge of the working of Linux 
and more to do with a lack of knowledge of the power user stuff that you may or 
may not want to even try to wrap your brain around just yet, and there's nothing 
wrong with that. A lack of knowledge of the internals of advanced Linux is far 
different from a lack of knowledge of the working of Linux. You're doing fine, 
you're just getting a bit confused by all the techno babble, which is 
understandable.

I believe it was you who started this thread, and the subject is still written 
as "What is the easiest and most accessible editor?" The answers you got back 
are indeed frightening, and if I didn't know any better, some of them would have 
made me run as far away from Linux as possible, as although all of these are 
accessible to screen reader users, most of them are anything but easy.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

