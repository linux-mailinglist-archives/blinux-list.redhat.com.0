Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id B0D51205447
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 16:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592921949;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a4jdtay76NkS94sekgfSM7h8VS4akRzXQMr41rnmxEI=;
	b=IjNrq7vw2eXV7w3M3ML5MbGsuBHDLhCqDoXOjbAe8SFBrtuUry97lP5AqugLOP73p+JEFe
	5ATOdxK6Lt1RfyLtKJ+ku2ZU8FUgtK3Dx3Df27l2gc+H0vo4uGBj5tk1hZL36U5l83WkvP
	+bjEehbNEuHjDwx/9KpR061zDyZA828=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-260-6XlhJdH3OHSQOZg5wGXlGA-1; Tue, 23 Jun 2020 10:19:05 -0400
X-MC-Unique: 6XlhJdH3OHSQOZg5wGXlGA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E85E10059A3;
	Tue, 23 Jun 2020 14:18:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5CA6E78EB3;
	Tue, 23 Jun 2020 14:18:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C81E180954D;
	Tue, 23 Jun 2020 14:18:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05NEIl2O012757 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 10:18:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 22D7D20234B0; Tue, 23 Jun 2020 14:18:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BE0320182A3
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 14:18:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B871858EFF
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 14:18:45 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-464-6eQkAK_mPaucGkYCVsgm1Q-1; Tue, 23 Jun 2020 10:18:40 -0400
X-MC-Unique: 6eQkAK_mPaucGkYCVsgm1Q-1
Received: by mail-qt1-f173.google.com with SMTP id i3so5973937qtq.13
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 07:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=1bHNwfvfbrd3eVxbUlZW31OFRoxF1e3oGICS6TKSCfU=;
	b=ZLcd+8ozFLDdTG0axXKdg3h6zK3pKux220a5c2r5wwyA4VscY8eC5fnl6hRL4F1Xq5
	o4Paf7JRyQECjedKHUmHusjHf/fAeyMX2AQKNVutdM5nQzSXJc+BSp3Scv5dJQfXstBd
	ryqcwzLV2bXaj78MxnXZBJ2FEssoW6oUR26zEV2KBYd5JwT/YOR5Q6Prv+tzYhHaaCIv
	yAkwyUqMQyyGrXaXils9xyH9DOxsev7J823ApEVFMOt0ww+icyP0qGB4yuf1eR5ESsyI
	VgursLQDHmVA/q4WbGj084JOeg8mt8rcwWby99+WdmGoLd28MPFJ8qaYYjtcaL37B61o
	+IOg==
X-Gm-Message-State: AOAM533PnaUDzEiIg3+cKlb6mvqk5oiD7KFzOMi0rru2dp8ofRSuXavP
	7PdlQbpdQTjMKwGhzl6F3dNVPnbEz72179SerlwZwJ2x
X-Google-Smtp-Source: ABdhPJz3CSAdg7qtWWfH1SCVKICQNhMyHSwHwJV36njh6M2xGXdY9BXcp7OzUSzoPr6vNvyOhQvv7bGokQz6EHmHqKg=
X-Received: by 2002:aed:2ba1:: with SMTP id e30mr11777997qtd.357.1592921918004;
	Tue, 23 Jun 2020 07:18:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Tue, 23 Jun 2020 07:18:37
	-0700 (PDT)
In-Reply-To: <1fdcb072-31fb-af97-f126-939175c776ae@verizon.net>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
	<1fdcb072-31fb-af97-f126-939175c776ae@verizon.net>
Date: Tue, 23 Jun 2020 14:18:37 +0000
Message-ID: <CAO2sX31z-VCStfSOPibjrY-kEHGpCYhdXG01aS4JLWutE-Zkew@mail.gmail.com>
Subject: Re: off list questions
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As this is an anonymous list, having an off-list conversation with
another user would pretty much require you or the one you wish to
e-mail off list to share their e-mail in a list message. Not sure how
comfortable you or other users would be doing so, though considering
the overlap between this and other accessibility mailing lists I'm on
and how several of the others maintain the senders e-mail in the
sender information(to the point I sometimes send stuff to the last
respondent in a thread instead of the list and end up with stuff added
to my address book without me wanting it thanks to Gmail being kind of
dumb about replying to messages from mailing lists), I'd imagine many
of the more prominent people would be fine with sharing contact
details if asked.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

