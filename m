Return-Path: <blinux-list+bncBCFIHJ744YGRBSV32S2AMGQEP6OLSLQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 688BE93154A
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 15:02:05 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-447f9a3d7d1sf59499171cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 06:02:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721048524; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcOvDs4wma+TYB6iGNVd9iYUWMy/H9VM+DAfWnqvbPMKS2BXZ+0vsI+B1RXo5Rcnbb
         kycI5DOQQ11Auzs1AdKFaATVOMhcG3yLYx2e7qx3H4qS4jnnSVerdmlHQSJL/QQfId6C
         EWBhWA4G46fXHL0JLrJi1ggwJ6M9Xipxn9kiuptYef7ndlwocDQrf7NNrzX04850CdT7
         vjsrW3Zd/ZDFOCMclhp/DnY6xaVmz1Cksl8ww6XhoQwpp2ETZNHQgGulnc/9vp9Xk8p8
         64EFJetT3KCXZYlGfKd0jnJQtlqvcPViWZPMRvWB62lpqIiqXTRL6sYMRbjl5cagUZN5
         Hpzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=y7okV1JCh+BIbRUxk6JqOWohKGD8MIRJuy+8NTICZWM=;
        fh=+0agJX9lciUrdkXzU1DKjAU2ExghdQ1E8Ook3ezXlyc=;
        b=NWco9k0VTODBqjBXdKCFFAt5kXQZ3VkwhbE8bJouAtfDqkpuIbmlj469waGu2Q/Vct
         F+xaFWqE+Am9MlGDbmqS4rEcRZYO7DtwXNOQhH4biw6rIZaTrIjxYdKEBdRjKGcvF5+4
         k8rfuJBRj6JAKHbpnVxGRmfyWS0kXA0P4gJEz4sVyWAqpZWyRFewwrL+C0ba6IqCx2Im
         zy/yyV+711nOo44Y+MAEsItS6bBio8Ok/MvFEVVe5nVnrK4OMtoZxlmZBe0e4kUjfdaR
         rRuyIZhAUZSUdYptxBhituIhHjuXZpgIHbluSVc76CMEmK6zTxqJukzrpKzVWzTvSz0J
         WFEQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721048524; x=1721653324;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y7okV1JCh+BIbRUxk6JqOWohKGD8MIRJuy+8NTICZWM=;
        b=tkP/0vkA/jxQXPMHFz2G9/8N25BGQ/oLYqDwbClJnZm8fPnf2Aq/yeFXPRSa6iBBLR
         oDYthmrsXBN5Y6olXUeborakF3LPPxuJuZGl5eIrp4faZvwQuV8p62dQiAAiPGjK8WoX
         LPIuC4F6A/Em2CE5+oXmU/lx5o4K9IPCHxvXMg5kfOq7T9yxr2jImPXUgZwBUEZKVoeQ
         Wame7sitbgKprZqMPzbczaspRdLp2ETcU54D4KdnEehPNDdX+XwiI2fVQ7uWzqrN9z7Y
         oaW+plwlFfjAkScWzIXz7NqUIWcYLYHBYLlVHF+COjuwqfgv/aSVKVeyfdjo0NkOIM3K
         tO7w==
X-Forwarded-Encrypted: i=2; AJvYcCUqX+wkCrJLxLXNrNcCA/UaEkB7C98wrY1Zwz+ywgSfme+R9EOEJFvixTF3BRXYu/aOYMzQIsWbLpEdm7f1UmwJyEq1XMjEUUAB
X-Gm-Message-State: AOJu0YzBa7JuIuBY1j/3E/3VZRJ4n+Fq4pg9sEn2PqCTUlpjFuz1iuuw
	n48TUxNtJA6nkj2ANH9i0OQW4NxvKMs6SwK/F+ueqUm/xaJIBPPlOxRTFuoC8Fw=
X-Google-Smtp-Source: AGHT+IGCeIZfGHaUnPF9h/Q1uygbNTnjX0maSANHqsZcn85l/1PrYjpGRFIIQonmYi82jYtETR5pvw==
X-Received: by 2002:a05:6214:250a:b0:6b5:413a:3f96 with SMTP id 6a1803df08f44-6b61bc7ec67mr268810906d6.10.1721048523262;
        Mon, 15 Jul 2024 06:02:03 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1d0b:b0:6b5:e006:11bb with SMTP id
 6a1803df08f44-6b74b32b16als99275836d6.0.-pod-prod-06-us; Mon, 15 Jul 2024
 06:02:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV8i3S/0kHYC1IYxOV2mw5rWaeeLtolzPeLjJwoDQ+VY915us5c4LDqL3kYkacIwOpJSLNQu4LMBp/8iOSOIVut02ljtmvBjzI6rqO9
X-Received: by 2002:a05:6214:250a:b0:6b5:413a:3f96 with SMTP id 6a1803df08f44-6b61bc7ec67mr268809376d6.10.1721048521933;
        Mon, 15 Jul 2024 06:02:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721048521; cv=none;
        d=google.com; s=arc-20160816;
        b=Fz4iR3xNKSD9FYL+HKFew06ADlw9IqZxSHVCnQzsMDkWDvUwKAXxZO0+5tuXffMSlt
         3c4Waxgdt6SETpo97ULaows2rbJchWzswZsIe8QzE5LltkRPX1Ay15MCGGx6QPGdBtfB
         hnCYAW8tHNPoNLA+YexFGld4zMrnouh80O7AoRdBeKrgAp0Wd6DwCm3rWWRlrKmTm34K
         enOuGveOq4oq0fo7plODhwk+UDyEBM68Vwg/eiV+bz0tilQV/CKs3MR+0d45lwWOJmgo
         SAi84mftuf6DcmMFvC1ywIN2GoKXy6vThESHVBMqAsJgbQqFFM1JxtHwPfvqbUKFhG0m
         Et6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to;
        bh=A1eWWc/79aE/2FDz/oFMmbCe/W/8JKJo9vXZZihmm9s=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=qrjg6cWEPQq8L8okiyndU0wyuxI7fzCvl6oqau/qXExqeBhy3h+/GhFC2T3vU5RnGb
         0d8bB1wMyQSQocnJMGHaQSdPQe7QgWxJPMEYS2Cvel9v1ux8EBrBVYdidXo6LLofV6VG
         thHUDr3VVyW3MZAAV8K1oa4Jsb0YVGyTZ1lwQ04QJUZB2qV9A+kIhqx3qUGppQZkOIR9
         Tl+XfobJKwTpkPuTGAnlmrt7gnNy80GawqNy3eGG/PLGW+0XLdRq5RJH0U4uzYTk8Klc
         5rN1O0wzxljCYXH8W5k74SQj6PpxFTKbmk6+qiTWE87B24svuuL19SbEOxriombRJvKT
         3qDQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a19342si50871026d6.341.2024.07.15.06.02.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 06:02:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-106-yhF230jzPjaYvAYqlyGoPA-1; Mon,
 15 Jul 2024 09:01:59 -0400
X-MC-Unique: yhF230jzPjaYvAYqlyGoPA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3602D1955F66
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 13:01:58 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 26677300018E; Mon, 15 Jul 2024 13:01:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 23E43300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 13:01:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 28AF41955BFE
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 13:01:57 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-637-7F3-bao3P26w3RzzKs6CDw-1; Mon,
 15 Jul 2024 09:01:54 -0400
X-MC-Unique: 7F3-bao3P26w3RzzKs6CDw-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id b5327f74;
	Mon, 15 Jul 2024 12:55:14 +0000 (UTC)
Date: Mon, 15 Jul 2024 07:55:14 -0500
From: Tim Chase <blinux.list@thechases.com>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
Message-ID: <ZpUcMqWN2_PPivOC@thechases.com>
Mail-Followup-To: Karen Lewellen <klewellen@shellworld.net>,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Tim here.

I've winnowed down my collection of Linux computers mostly because
I've migrated usage to a mix of FreeBSD and OpenBSD.  That said,
they're similar enough that hopefully my answers will be useful.

I host my own email but it's a non-trivial task.  *receiving* email
isn't so bad, but there are a *lot* of hoops to jump through in
order to send email without the mail-monopolies flagging it as spam
or outright rejecting it.  You need your DNS set correctly, your
reverse-DNS set correctly (not all ISPs/providers will do this for
you), you need to set your SPF and DKIM correctly in your DNS as
well as properly configure your DKIM certificates in your mail-server
(and have them renew regularly), and a clean IP address (it might
even depend on your netblock neighbors' behavior).

I run OpenSMTP+Dovecot on it so my beloved can connect via IMAP/SMTP
from her Chromebook/phone, but for my own mail-reading I mostly
just SSH into the machine where I have tmux running and access my
mail folders directly on the VPS (I use mutt, but alpine or aerc
would work too).

So for the common (not super-geeky) person, I'm a pretty big advocate
of outsourcing your mail (at least the sending part) to companies
that will handle these headaches for you.

That said, the hardware requirements for hosting email are pretty
negligible.  I have a ~$5/mo VPS instance with 2GB of RAM and it
is more than sufficient for my email and website.  Storage would
need to be commensurate with your usage.  But my mail-server has
~30GB of space and my personal mail archive is under 1GB.  For just
mail, you could get by with hardware specs comparable to a Raspberry
Pi because the requirements are low.  Unfortunately, if you start
dipping into the lower-priced VPS instances (like the $3/mo), you
often encounter sullied IP-addresses/blocks where others have used
them for spamming, or the provider bans outgoing email (for that
reason) so it's a crapshoot.

A quick tally around the house turns up 4 OpenBSD laptops and two
FreeBSD laptops (most are hand-me-down hardware) in addition to the
two OpenBSD and one FreeBSD VPS instances as well as one Raspberry
Pi which runs whatever OS I put on the SD cards.  Most of the laptops
ran Linux at one point but have since been swapped out for BSDs.

If you're venturing into running your own Linux (or BSD) machine
at home, I encourage you to try and obtain dedicated hardware so
you can experiment and repave it as often as you need.  As you can
tell, I like hand-me-down hardware for playing around.

-tim




On 2024-07-14 23:45, Karen Lewellen wrote:
> Hi all,
>  many times I have shared that my entire Linux experience is tied to shell
> services.  Dreamhost for my  employer, shellworld for  both my personal
> site, and an account with them.
> Because shellworld is still refusing to incorporate current email demands
> for ptr records  for host names, I am wondering how others manage their
> Linux experience.
> If Your host your own email, have the equal of a Linux shell with several
> browsers and convert tools and so forth.
> Do you use a single dedicated computer,  different hard drives, external USB
> drives, or partitions of a large drive?
> Aside from educating me, perhaps learning how uniquely one can run Linux
> might help others new to the concept.
> So, how does your Linux garden grow?
> Kare
> 
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

