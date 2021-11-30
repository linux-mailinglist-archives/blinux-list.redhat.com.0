Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C44463CF9
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638293924;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PaYxqZQLkP9dMoGUNG3UZhEExdX1FNHHraNFXraHpyU=;
	b=NY39zM1h62Q8tSyCA3agOhpJHU7jJV/MPKVLSqZBH/dEvgCbgjHFrRB8Ja88oqQLRjbyKM
	47xl08KYPidjk+SLePrHUCM6jrKlwYZa0Nyzp4gsjY3ApEaVhhlPF26lWZSBxnJXkCgR6s
	2f5k+6YFjjNBabv10gY6HUJgfMFexws=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-276-a1e_MMCONJ654uXEiMmohg-1; Tue, 30 Nov 2021 12:38:40 -0500
X-MC-Unique: a1e_MMCONJ654uXEiMmohg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CBE610247A7;
	Tue, 30 Nov 2021 17:38:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8528A1F2EA;
	Tue, 30 Nov 2021 17:38:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D80D21809C89;
	Tue, 30 Nov 2021 17:38:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHcVwQ010970 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:38:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 44A29401E6F; Tue, 30 Nov 2021 17:38:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41415401E5F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:38:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2781580A0B5
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:38:31 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-551-KMcjoSyYMoOKMnl-fQij1w-1; Tue, 30 Nov 2021 12:38:29 -0500
X-MC-Unique: KMcjoSyYMoOKMnl-fQij1w-1
Received: by mail-qk1-f182.google.com with SMTP id de30so27711968qkb.0
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:38:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rS7HrP+Z5B55BZDPaspLXRIUqWsGgPyrGBMJoAX1w2o=;
	b=lx4FeL6a3oGAUgeRqx6Fde5DJp0Tb8PkRD7YRkBtKTJVWMs7CiFbSfNbJyVlpybItd
	5NqIZz5/Sx+zHaV4QfAyQuWjKNJqfYTHhG74BGz2bTqa9Tov4ETSbHXBqsHqI+Os52m9
	AyggHuNsBh6OHqOXHU+hmQ6xWZlVuvZBsy+VusTZ0YTo3jEwGjg7itXB9KvhleUR9q4m
	fAkLq1ARJME6yPLcQrCW1v+1iPri7Hi8RGxfWhC/POyYI6NONSx5b+iXuHZZOKskJhLe
	MNmS6xPXu3fyfsAixzaL1CnuFKthD89GXLoykcCeBPdhGtETeOTfGACDd1FW5EULv2dN
	joeQ==
X-Gm-Message-State: AOAM5328s60QzefRVKDixJjaishh7qg86lrG7h1oBQ+iW7dMV2ZZiMJK
	rEhqCDXNSpQAps5Q7jqXD1tM++uhgyoMToLzwYOpaVVY
X-Google-Smtp-Source: ABdhPJyox0lZl3dNyZXzmilyNVWjaCgdo1S1DEPK5JsZZkioDd6Fx5TVBvTnI8t8vMkyimFTx+SKaYDMn62QZrVl9HA=
X-Received: by 2002:a37:a90a:: with SMTP id s10mr797368qke.124.1638293908924; 
	Tue, 30 Nov 2021 09:38:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 30 Nov 2021 09:38:28
	-0800 (PST)
In-Reply-To: <PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
Date: Tue, 30 Nov 2021 17:38:28 +0000
Message-ID: <CAO2sX33Ek3Vo++4TGSxSnphQWRorYkz9x8325Ap83pkJwmrLXg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Oh, I agree this thread has remained quite civil. Doesn't change the
fact that the Internet has a disturbing number of people who get
offended by the idea of people using different tools or liking
different things to the point of open hostility... or that such
attitudes are rather silly. If all internet discussions were half as
civil as this one has been... well, I suspect many of society's
problems would evaporate due to people actually listening to one
another, respecting each other's opinions, and being willing to work
together even when opinions irrelevant to the common goal differ.

I feel like I should link this back to the text editor discussion...
but honestly, I can't really think of anything that hasn't already
been said.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

