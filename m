Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 881843C8A71
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 20:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626285967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZB2G+b9xqjtkhLWmo60kFc1pMkPoMCbAYWI7Z2/v+fM=;
	b=C088AO97yQ7C6TGXASAtxLu/dRQMDzggk6FHPVir+7fmeyVTltGyMDB2i6ftGZ3So+xnlA
	n24Gvha6Zq1q5OYHJ59UIXN+BiAFJSfxexZOam9HsN9vEZjxG1sJknVrhwqRHssFISsmSM
	vVZH2w25X6X/2xdrnO8D3VbARMBVq4A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-Owj_liD4PliPKsuzKO9mZA-1; Wed, 14 Jul 2021 14:06:05 -0400
X-MC-Unique: Owj_liD4PliPKsuzKO9mZA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A079B8030D2;
	Wed, 14 Jul 2021 18:05:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5454A17CFF;
	Wed, 14 Jul 2021 18:05:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F4094A712;
	Wed, 14 Jul 2021 18:05:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EI5dvO001471 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 14:05:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C6AC321EE589; Wed, 14 Jul 2021 18:05:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C1BE821EE584
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 18:05:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD43D18A01A0
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 18:05:36 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-442-LeMKxE5kPtKSG-31PBHT4w-1; Wed, 14 Jul 2021 14:05:34 -0400
X-MC-Unique: LeMKxE5kPtKSG-31PBHT4w-1
Received: by mail-io1-f51.google.com with SMTP id v26so3228474iom.11
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 11:05:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=vtQHTEWy6AtUg7J40EcaY9PhDWoImx5X1POgBgQuEF4=;
	b=ri2u3tYwLllNX4bpeWeKUNKmllQeyQyz7ZbQPhTRS2PY9VGGuWhtKzRoDCoX88LVt2
	S/fQ4MfMItHK3TwOKkM2kzQiPFQhSFv9GhvGZR9rJRcnxQYCZ08hzJ46izaCSBBq1CfE
	hUNx6ElENVyVNto22rnXNsKc7t1GSV4xUVQyh955Pr4FLRUEPto6tKHRHA2u4QIOmbCR
	u3BQMoFjtF0XfHBXrZTbpCnFNBE2qbzDmdovDlybMJ9WihUjMF4YCwpso06CSAF77Dxx
	KEzlS3jgb15BTLuYM/im1sxkpD31CxVLVydGfSqXVeQa22kXfHOdkoIbALbzJepgO0Pk
	lMsA==
X-Gm-Message-State: AOAM533QaWMxLc9f4x/vk0blLQS3V+d/MDXcsanbnksgX6MrpPoknGPR
	pEEa/pcy9YGzuIKZGbUqvlb7c7K5F9t/aINqokhElTPW
X-Google-Smtp-Source: ABdhPJzLO/zq+UnlSN7TxUkycNCr6/6PPYLELY4TnJzks+SFDBoxwsQ4Mz8QFExTnyem0mbPxL/G4m6IEhpXRQaViqM=
X-Received: by 2002:a05:6602:134f:: with SMTP id
	i15mr8081344iov.143.1626285933235; 
	Wed, 14 Jul 2021 11:05:33 -0700 (PDT)
MIME-Version: 1.0
References: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
	<e4bddc5b-213d-70e1-c50b-58bc06b3f535@gmail.com>
In-Reply-To: <e4bddc5b-213d-70e1-c50b-58bc06b3f535@gmail.com>
Date: Wed, 14 Jul 2021 13:05:22 -0500
Message-ID: <CAGJxbF7LT0S_Vg_DGzjU5do3vb5_+uP3DK6v47fyDgb4foJuJw@mail.gmail.com>
Subject: Re: Cloud service
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

At my work, we have a Nextcloud instance which is pretty nice. I've not yet
gotten into the collaboration parts of it, and I really want to since I use
Markdown and everyone else uses Google Docs. Which reminds me, I've gotta
post on the Orca list about tables in Docs being very slow to navigate.
NextCloud is really easy to setup, although the app itself hasn't always
been the easiest to do stuff like delete accounts from. The accompanying
site is really good though, but I prefer having everything I can local and
accessible easily.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Wed, Jul 14, 2021 at 11:03 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I recommend either self-hosted OwnCloud or NextCloud, or a service
> provider that offers one of these options. Far more than storage, both
> of these solutions offer powerful collaboration tools and can even sync
> contacts and calendars, and both are open source and secure. Check out
>
> https://nextcloud.com/providers/
>
> for available hosted NextCloud providers. All the private use providers
> will offer at least 2GB of storage, which is comparable to Dropbox, but
> some offer more free space.
>
> It seems to be more difficult to find OwnCloud providers with free
> storage space, but it's usually better if you can do so to set up your
> own host, either at home or through a VPS (virtual private server) in
> any case.
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

