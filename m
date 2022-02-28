Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 834E54C601E
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 01:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646008112;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sDKy6CVp9GFgT2o3nlfcvUvCJVWV4S1r0TrQgJHz8U8=;
	b=M5kFK/+aWx0baeTRcUUrFbMliFfiKROKl6iA23mPaBisOkb4ds1UUnFUzdKZcUkVauMCE3
	LtQputoqhZ8TbnnbS3x66flIl5qGrMWqXk3FD342SpCdOjy5gsVe46uLi3OoUaW+MwpKlQ
	ULrORlEgXoHahi4Wvd2TkQfpr0wRVWU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-557-qqjs40LiNTqufM-jOiB4XQ-1; Sun, 27 Feb 2022 19:28:29 -0500
X-MC-Unique: qqjs40LiNTqufM-jOiB4XQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B54B7801AFE;
	Mon, 28 Feb 2022 00:28:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8184C26DED;
	Mon, 28 Feb 2022 00:28:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7AC004BB40;
	Mon, 28 Feb 2022 00:28:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21S0S9ns022270 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 19:28:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A224B48FB31; Mon, 28 Feb 2022 00:28:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E13A468A7B
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 00:28:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 865BF29ABA3B
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 00:28:09 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
	[209.85.219.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-457-9oiC2N_DNSuBT7q807EaEw-1; Sun, 27 Feb 2022 19:28:07 -0500
X-MC-Unique: 9oiC2N_DNSuBT7q807EaEw-1
Received: by mail-yb1-f172.google.com with SMTP id w63so17242812ybe.10
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 16:28:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=U3lVzJBS1LtioXzuNu/FanHYPpgySTT1UKFmYgZd2Qk=;
	b=AvX6FIb0OVRgYuThFJxE1Rfn89ul2LI7le2V9rv4EivyYYzxrMXbo/8fIBG5bxftEk
	DEmUeHBtcNC2jaoNmc0QfopSWNDIHCAEBWb1/AqPcNNJJM6nrDjlwmGdfeZmo171Dm+q
	p2UDEgG8hDdB11y9mIfEBwQdu4lJz0aOpWYRBv6rWCYBK7XI589tk0NPRmnMzW9keftf
	Xglcw04tLJiB+t719PokQJglEv3rxTztcZ3oCI9azY5Dxznykb2J/g2xxwEPXVD7pZ4h
	39sIuThvA1QK5bQIHgyxbz6jwUMnrnHcPgi720xOL4lM5h+uJE/oUZUJraUCVl4fs778
	vXTQ==
X-Gm-Message-State: AOAM532GbmJCScWSqLSshSu76c3uiESihPuo1kaM1NEqNm+Y3hli0tji
	IWrD3VOSfHZzT0hiOW0azPKvmASxkbDbx6hMlyXR4nBbUnY=
X-Google-Smtp-Source: ABdhPJzS10vnmYTS/K4zOxaKOaILuAmt64I20YASzj+5A20Q6Vt0U2SJ/4FyCIDb+AuAwCMrZ2ePAoK1HvE3vAXm608=
X-Received: by 2002:a05:6902:12c6:b0:625:262f:e551 with SMTP id
	j6-20020a05690212c600b00625262fe551mr15686681ybu.414.1646008086783;
	Sun, 27 Feb 2022 16:28:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:5110:b0:211:25fc:83e3 with HTTP; Sun, 27 Feb 2022
	16:28:06 -0800 (PST)
In-Reply-To: <57d14a3d-be66-d3ed-51f2-78a5cee23d06@free2.ml>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
	<CAO2sX303T7OgFDkL5qZwAwDc2T1miTVrrAaB24EZ=i-R8H6syw@mail.gmail.com>
	<92f91c3f-56f6-ae03-0f4e-d52c3fc64daf@free2.ml>
	<CAO2sX321e0PL969ePjSzSKvy=HxDoueBc-P2jFwS50sM+ZR6AQ@mail.gmail.com>
	<57d14a3d-be66-d3ed-51f2-78a5cee23d06@free2.ml>
Date: Sun, 27 Feb 2022 18:28:06 -0600
Message-ID: <CAN8Cudgf03ND87hvLuabqwX8Yni_MTBraSxWN5s4P=ipwux=2A@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

My point was, being one of the oldest strategy games out there, and
there never being an accessible version released, it would be nice to
have an accessible version on both Linux and Windows.
Also, Windows was not designed for gamers and "script kiddies." It was
primarily designed in 1985 by Microsoft to make the use of IBM
personal computers easier, for those who were intimidated by MS-DOS in
its text only glory, and without DOS and Windows we might not have
Linux.
(Yes, I know Linux is based on the GNU system, which was based on
Unix, and that Windows and Linux aren't related exactly, but the
evolution of personal computers wouldn't have gone the way it did
without DOS and Windows.

On 2/27/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> As I've never heard of 2MB and it sounds like the kind of thing that
>> would be difficult to search for on Google, mind providing more
>> details?
> Oh sure. I thought one or both of the people behind 2MB were possibly on
> this list, but if they were, they probably would have chimed in by now.
> 2MB Solutions
>> https://2mb.solutions/
>
> consists of Michael Taboada and Billy Wolfe, both of which many of us
> know from various projects including BPG, Audio Game Manager and other
> games. Billy is actually the Storm behind Stormux as well.
>
> ~Kyle
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

