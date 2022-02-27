Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2893F4C5F0D
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 22:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645997078;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R7abCsJXsoiIjhX9hkef4oMEaNfoheoem+PRB4aoJCU=;
	b=YQlWM5xkSSGqMHm8Z06uGQmXPJvdJEtWhj7/3KzHaZvtv8Sql91/4LZT29myqum8Gq1QgS
	/OLCaUqBIZy3XBHot/BOW+Qw+1GWLjrjYFchh8NP4NZvJE8V1XUfVI96Ud1N6aSnH5VyiS
	BxI595+I1c+Gneiak0/tKo39v2bPi3s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-131-a22FYNZrNkSsYdiRvES20A-1; Sun, 27 Feb 2022 16:24:34 -0500
X-MC-Unique: a22FYNZrNkSsYdiRvES20A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3680351DC;
	Sun, 27 Feb 2022 21:24:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F32F456F81;
	Sun, 27 Feb 2022 21:24:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 323C34EA37;
	Sun, 27 Feb 2022 21:24:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RLOLdE010536 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 16:24:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 14FF8400F3EC; Sun, 27 Feb 2022 21:24:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10FEB400E123
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:24:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69661811E75
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:24:20 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
	[209.85.128.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-626-jJpA_iZ1NaSDdHeqNQ48ww-1; Sun, 27 Feb 2022 16:24:18 -0500
X-MC-Unique: jJpA_iZ1NaSDdHeqNQ48ww-1
Received: by mail-yw1-f174.google.com with SMTP id
	00721157ae682-2db2add4516so54949327b3.1
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 13:24:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ss9rEmZjgad+FHQbLhXHHY2msK0gau5oTjR1IuRKgC8=;
	b=N5IJQ1djiNCiqzMZP1z1/a25iziNCtHCTrHx01BowDjB61qoz1CTq/bhaLQlyb9C5T
	EeXVgrNZhF3Legml3OUTUB23+wlZLSTj0X4ed7JQCGa1dM+WHDOkkvRHIG1MHmJywLCQ
	vORw2JpPyhZHhqmObAkBPvwbgiUNihLjim20HKLXRM2Xd3C2Y4p4d45UavSZNHj3PCCt
	dAdUKuf/ke9512S13xYI/gagUr8xchYWrRfU4q9GQwZybtDEsZGL+UTFV85C6QglY4do
	9hWxFMwn2ZN0ZO/y31C/byAj+t/vXld2kHegRgqRYmx35u9Pzm8Ll819T1NaavBxQd3z
	55dg==
X-Gm-Message-State: AOAM531fcqPWY2SWQreY2MTWlAU3RKFAscpcSeQMys39ogt0k6Cq4qn2
	K+QRsXnVviNyz9T2dUjHtjWsK0TG4B7ypqwdHz7wrDcA1aU=
X-Google-Smtp-Source: ABdhPJx+umG5KTX+E6t8RtB+nyQpOlCr1ZUzstdWkt4nxHG+HRegif1NFJq3He8SYJlcJE0BengeeBWDNLGRcHe+TFc=
X-Received: by 2002:a0d:c103:0:b0:2d6:43a0:ff33 with SMTP id
	c3-20020a0dc103000000b002d643a0ff33mr17214715ywd.13.1645997057692;
	Sun, 27 Feb 2022 13:24:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:5110:b0:211:25fc:83e3 with HTTP; Sun, 27 Feb 2022
	13:24:17 -0800 (PST)
In-Reply-To: <3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
Date: Sun, 27 Feb 2022 15:24:17 -0600
Message-ID: <CAN8CudhVwgPCHnDt6-qHKT6uo9F8Wo9bSJZVtgHVWrtd5wKrrQ@mail.gmail.com>
Subject: Re: Voting: Which game would you like to have on Linux?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I would love an accessible version of Go. Any chance of your audio
version being ported to Windows?

On 2/27/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> O, I can't resist. What about some of the older DOS World Series Baseball
> games? In addition-and-since I am not a programmer, but as an Aquarian,
> sometimes a dreamer, I wished I could have created a Boxing game, however,
> with
> the flare of when Boxing was on Radio. Certainly you would certainly use
> your
> left-and-right arrows to punch. Also, the late Jim Kitchen suggested, you
> would
> decide before a round began which type of fight? a for agressive, maybe an r
>
> for rope a dope. I suppose unless you were to get an announcer with
> experience
> to record samples for a game such as that, I `really wouldn't think any
> speech
> synthisizer can adequately do play-by-play or in this case blow-by-blow. I
> am
> sure I've had this dream since the 90s, not2mention probably no1 under 60
> would
> hardly remember Boxing on Radio.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

