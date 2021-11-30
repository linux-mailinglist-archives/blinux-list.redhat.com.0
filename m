Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB215464052
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 22:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638308203;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OJyS39BCYVPdNqs4i9yFHbK7CL9n+Z5G2aefVMgdTU4=;
	b=aujrqM5qbhv9bJkke7SZn7pdJPBm4I5oZhiV0Hvm99DC+U2b6deBz9SIV+luYeRhpN4CBv
	rKjF283oopDBYRFxTMPttZaGA6MY+Vf9UrqkYR/85UvrDR6eTExKVtodO86cklpIspbyPN
	m6r55vJQ1YXzIzXYQTkHI5JuVeutEK8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-IpsoM3gQMHixR6o_hhpP_A-1; Tue, 30 Nov 2021 16:36:39 -0500
X-MC-Unique: IpsoM3gQMHixR6o_hhpP_A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8040983DD2E;
	Tue, 30 Nov 2021 21:36:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52716608BA;
	Tue, 30 Nov 2021 21:36:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 126DB4BB7C;
	Tue, 30 Nov 2021 21:36:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AULaPSd003214 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 16:36:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BC14A1410DD7; Tue, 30 Nov 2021 21:36:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B81A91410DD5
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 21:36:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6987B1066683
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 21:36:25 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-310-T8Guq1Y3OtaIbGV1fpRKpg-1; Tue, 30 Nov 2021 16:36:23 -0500
X-MC-Unique: T8Guq1Y3OtaIbGV1fpRKpg-1
Received: by mail-qt1-f174.google.com with SMTP id o17so21768528qtk.1
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 13:36:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=YYkTQX8AmAdYl9fBg4NLOaeFb7tDXr4PLkNc8kUAQOw=;
	b=Mm1TXG21qsuzoVC5R7Id59QRyJQZp87WCUlr8fOGEmbAA6bdSohLAi9PwHyPHBRjNe
	lYgLwYm1/itimrXHlCsJkxgbpw0gWeWO/WeJpNGVbfM3hbNu93IyftedYqZXJZFx8YRt
	lyqJGzRWpbjw4rcZbi1msXQXckEwKrQNFgpdkCGRTw/G4tq4QLRQ/ctRaB7q+ZV19a8x
	Mu0JuRx4KtVvPAltkyaQwCQ5e54IogeojXynQY4fqt9teOkGtoCFKHiE+azkis3rTWBs
	npPAQk8SLt61bWTtT3O+gnHv/Gf5t946an1Vsgq8+Yz1Qr9M1E1TAsOJeuA9k7K5nf8E
	jgnQ==
X-Gm-Message-State: AOAM533hi0XFmWnE36pPsuj701zXEJQKaP/EWLCu5GRseunAKqB8fDsj
	BKWcXCrlD719GayV66D1XOik0g7RZPeu9RkPVOLPBwnY
X-Google-Smtp-Source: ABdhPJykC8DfMQye7+8RsP390M/uY+JqgvGswOUmnga0W4DriaydmB4cZJwUGUpoJOI5VACOVomQSAwik4T5e4whawk=
X-Received: by 2002:a05:622a:1055:: with SMTP id
	f21mr2349957qte.421.1638308182853; 
	Tue, 30 Nov 2021 13:36:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 30 Nov 2021 13:36:22
	-0800 (PST)
In-Reply-To: <PH0PR14MB4296D8F752C6B2915D206AFDC8679@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
	<bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
	<PH0PR14MB4296D8F752C6B2915D206AFDC8679@PH0PR14MB4296.namprd14.prod.outlook.com>
Date: Tue, 30 Nov 2021 21:36:22 +0000
Message-ID: <CAO2sX31iaA9MF9DWxO7Osavhds0ujf8dzBFV2ierc+c8=31Arw@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Regarding Micro, I think it's pretty young as text-mode text editors
go, and if memory serves, it first showed up in the Debian
repositories earlier this year, and best I can tell, is available in
the current Debian Stable, but not oldstable. I can find its website
via Google, but I can't find any information on when its initial
release was, and best I can tell, it isn't included in Wikipedia's
list of text editors.

Though, considering the age of these things(best I can tell, both
emacs and vi date back to the 1970s while pico is a comparably spry
32), predating Windows rise to dominance and the shift of personal
computers from tools of science and business and toys of the geeks to
everyday, household fixtures, it makes me wonder what the thought
process of the original developers was like to give rise to ways of
doing things that, decades later, seem esoteric to anyone who haven't
been doing things that way for years. And honestly, it isn't just text
mode text editors as several other applications that have been around
since the days when command line was the dominant UI also have
keybindings that differ from what someone raised in the GUI would
expect. Firefox is the only graphical application I use, and one
reason is that most of the text-mode web browsers I've tried have
alien keybindings(other big ones being how many websites just don't
work due to text-mode browsers lagging in support for JavaScript,
HTML5, and other rich web content, and Orca's navigational hotkeys
just being too darn useful to give up and making me wonder how past me
got by without them back when I could see).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

