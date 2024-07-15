Return-Path: <blinux-list+bncBDGI3AUYYYCBB6WP2S2AMGQEE6QTCJA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA4E931603
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 15:45:32 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b5f61c0cc1sf62209416d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 06:45:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721051131; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwSI0L30ipMEI5Ix4qC2Nqe+xR1HL3WXvV+4c2+QuyYo0fXpAbhlePiCfrrSp8XkZh
         EBvdRSh4B1QL2vLYkwMCcnr2gs2DOBtkyQRGgq1rV6I/HpKfy2IdOQyUXFcEL7aZPI2M
         CJ5xnKo2n4lSO4td+O4XrSjiKlsNLmfTvhFENX4CksdhEm/1Q93IY8rtP0HsyX82fUmY
         zq7gKgiLSr0M1FhNsLvW4DCOWs926Uk9cbBQD2lxAcnrOEEe6twp90ti/CPhu1xQmI2H
         /jBIkGtnM2Dflu/Cbt70Es04hKH43ISaZ41zLjbXl4+3IuktBs0wWty3ast0hStU4tJ8
         gl8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=zV8Ovyi8ZStArUHTUP2djqybL62GLDdh5U4pUHG2Rzw=;
        fh=oAcp5Cz9aGI+liTpxjs8gnceV1MAL0Ek6CRI3hDjsUs=;
        b=RBGmdvJK9E5EYN85MfT6nuqtL91rCSqa8WyXMBkLNWBFkcoNClKb6NpVlw2qCAmMWv
         vi998IZuktpagrsmbEjp2U4DkwKh4YGGB/z5u2/xD9wV8b4m7LjEwL9AEomBrjlWU82d
         vjcoFBqtbX8BQVHykFFq6JBdGO08oxZAo5Y3NrToKnPHTdxiuiviYhuRNqOFH3JADcXc
         ugNC/eYzkulTvJe/YErYB6l8zByqNepe037lmrY/7oYAP/AnfTlmcrvPRj3pz6xdmmWy
         AmRr26uvgIJMy47ebfOanWNI/LBzq+GbgcI384CO0Nde8NCWPgXGHXPVBqgCDhHooFLF
         EBEg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721051131; x=1721655931;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zV8Ovyi8ZStArUHTUP2djqybL62GLDdh5U4pUHG2Rzw=;
        b=ILS9qbf0+8Catn6cXtMQnyKt2IGRpnTD2Xa3U0kUgchuRJXwXC7lGS2hlKWsnTaCOZ
         iD85ij5sDecXl2h2FAhBrVC3z19rOt9cxvoExOgJZVuTSx/60UYWNSDQxKlmN79rB8nf
         GEDZg6HN+ZAmL1w0JVf4/CKk6u8gBC8XZ5pJKd7WG/42rdSHGhAvjyfSDq3/Y7qBqvXK
         OA6kjI0aoMj1c8Kqb2gY5hf9YnA9Ph7x+oXcb26C1QdCbe6apkCDOIXOGbyEYo9rABNe
         fRDqreWZFp72YHyP0KrBkks/cYtSp+TkLOIcFfNwiGJxNEZUevoedhaFzsNkodUZkEyn
         QfOw==
X-Forwarded-Encrypted: i=2; AJvYcCUrx8jwIyKnPml57GIRr0ePpV2aP1gi8gRxCZmaVox4jjsD/q2Yb1fOWLcfz3jNKYCvwPBZ56tZ6ZtgwG0p6U48zvYu4/JdWIe+
X-Gm-Message-State: AOJu0Yw+ViP88H5OSlCoqzXASoQhDJMak1Rxfro7ecgiNM/92aSB4F9p
	uX8CWZuYtAt4+igK91arpiriP4WESi08VkMvXr3U9sLj8ATajDg56ZYJ21n3vqU=
X-Google-Smtp-Source: AGHT+IGfn59S0M+Ut6OpHGHcq7a3eHakpwTEA8LF5LNYTHn2ul8r+OXl2kWzxw0MjUDKYn9Bf1ebpQ==
X-Received: by 2002:ad4:5f08:0:b0:6b5:4249:7c4 with SMTP id 6a1803df08f44-6b61bc7edbfmr231822966d6.2.1721051130612;
        Mon, 15 Jul 2024 06:45:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:d84:b0:6b5:da50:ac19 with SMTP id
 6a1803df08f44-6b74b43b183ls106324976d6.2.-pod-prod-07-us; Mon, 15 Jul 2024
 06:45:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUv49r2zw3RwbgNf987sDDHVwsvCPBDAFrC1egX1KPPwul2Z59EjSz/LGUbGq7MRbhUY8i508C7lHpBoqRey5feNWFvLQOvtb3HBjhg
X-Received: by 2002:ad4:5f8d:0:b0:6b2:cab4:4ccf with SMTP id 6a1803df08f44-6b61bd05203mr240429366d6.26.1721051129823;
        Mon, 15 Jul 2024 06:45:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721051129; cv=none;
        d=google.com; s=arc-20160816;
        b=S40DFNnzzlegkn7Y+avVze28j0yT7b9FLvzKEGWFpIVM5mRuY+rL5RILBJskQNH5w9
         jErfExkb0Fjg8r+GxG0nJgINHnm26vKFL+Ui9QMx6NA2sGtQeNHuPQyNc1Ugnt5Duk47
         oJMCjPPhX+TTnijF7s2eSueCayukb85gI3xO3kMwSSpWkozhaC4xqHlplOrjrYTocoh0
         A7FN8vTof19I4gt1ioXgbe6OSvnemPFiBr9xIE3ihATbuB5H6CCcHxltDi9SxouPHMSW
         h7SgSVdYl3wLA23lXo/6s7PY3P5AjM5fd438Jqlg7OV1ndKoiP5/DQ4DQZnxIVQdP/g+
         gD0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=TPX44u/bQ80UN1wlWLyduU0ywvX4TDiAlpZqFjQXk9k=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=h0aP9ATMbUMZqt8Eteklpir1+LwAn/WzRSJO2obkraXUU/TBWKZ74AAE3CBt7Gx0y8
         bYV8wwUBsXbVjdkfN0JYZapn42+kWvGZzBqLA1lB4irMicjzvX3RXx1PAUi5ICBthuPj
         kG4qd1sDQtvVb7/Lp9EtNW8mS/aYpyAvNc760i2S3rtl+0HjDHTr5dQCdty9VBb7nyNs
         ZOV+Da7t/lj5oKkaKa6bYt/1dibc8Yx+Tplo6UmpiA8TM9cBJ1gwp5rfUUU3rOjapNGR
         ec/saFb29i0Hou00NJdn9wAUl9IJgtwyQYWaJE3ZDTb14PGcV6LsWbVajL8QxfwQeofZ
         +OlA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b76197a5fcsi51611806d6.152.2024.07.15.06.45.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 06:45:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-339-QrA10MR_O4GgLI0K2kL5HA-1; Mon,
 15 Jul 2024 09:45:28 -0400
X-MC-Unique: QrA10MR_O4GgLI0K2kL5HA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BD8541955F41
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 13:45:25 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AEDE61955D47; Mon, 15 Jul 2024 13:45:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AB3741955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 13:45:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 22A8F1955D4E
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 13:45:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-479-SR8onS5kOBCdv6gd6so_gg-1; Mon,
 15 Jul 2024 09:45:19 -0400
X-MC-Unique: SR8onS5kOBCdv6gd6so_gg-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WN3Nv0Q4wzNQJ
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 09:45:19 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4WN3Nv0CkCzfYm; Mon, 15 Jul 2024 09:45:19 -0400 (EDT)
Date: Mon, 15 Jul 2024 09:45:19 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
Message-ID: <ZpUn710LXPBRCNCm@panix.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <ZpUcMqWN2_PPivOC@thechases.com>
MIME-Version: 1.0
In-Reply-To: <ZpUcMqWN2_PPivOC@thechases.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

This is precisely my situation. I now run two Slint Linux 15.0 machines, but
outsource both email and web hosting to panix.com.

It just makes life simpler. In the past when I owned a business domain , I ran it
on a local linux machine and had to maintain both
postfix mail and apache web servers. This took up a good chunk of time so I gladly retired
that part of my work.  

Rudy

On Mon, Jul 15, 2024 at 07:55:14AM -0500, Tim Chase wrote:
> Tim here.
> 
> I've winnowed down my collection of Linux computers mostly because
> I've migrated usage to a mix of FreeBSD and OpenBSD.  That said,
> they're similar enough that hopefully my answers will be useful.
> 
> I host my own email but it's a non-trivial task.  *receiving* email
> isn't so bad, but there are a *lot* of hoops to jump through in
> order to send email without the mail-monopolies flagging it as spam
> or outright rejecting it.  You need your DNS set correctly, your
> reverse-DNS set correctly (not all ISPs/providers will do this for
> you), you need to set your SPF and DKIM correctly in your DNS as
> well as properly configure your DKIM certificates in your mail-server
> (and have them renew regularly), and a clean IP address (it might
> even depend on your netblock neighbors' behavior).
> 
> I run OpenSMTP+Dovecot on it so my beloved can connect via IMAP/SMTP
> from her Chromebook/phone, but for my own mail-reading I mostly
> just SSH into the machine where I have tmux running and access my
> mail folders directly on the VPS (I use mutt, but alpine or aerc
> would work too).
> 
> So for the common (not super-geeky) person, I'm a pretty big advocate
> of outsourcing your mail (at least the sending part) to companies
> that will handle these headaches for you.
> 
> That said, the hardware requirements for hosting email are pretty
> negligible.  I have a ~$5/mo VPS instance with 2GB of RAM and it
> is more than sufficient for my email and website.  Storage would
> need to be commensurate with your usage.  But my mail-server has
> ~30GB of space and my personal mail archive is under 1GB.  For just
> mail, you could get by with hardware specs comparable to a Raspberry
> Pi because the requirements are low.  Unfortunately, if you start
> dipping into the lower-priced VPS instances (like the $3/mo), you
> often encounter sullied IP-addresses/blocks where others have used
> them for spamming, or the provider bans outgoing email (for that
> reason) so it's a crapshoot.
> 
> A quick tally around the house turns up 4 OpenBSD laptops and two
> FreeBSD laptops (most are hand-me-down hardware) in addition to the
> two OpenBSD and one FreeBSD VPS instances as well as one Raspberry
> Pi which runs whatever OS I put on the SD cards.  Most of the laptops
> ran Linux at one point but have since been swapped out for BSDs.
> 
> If you're venturing into running your own Linux (or BSD) machine
> at home, I encourage you to try and obtain dedicated hardware so
> you can experiment and repave it as often as you need.  As you can
> tell, I like hand-me-down hardware for playing around.
> 
> -tim
> 
> 
> 
> 
> On 2024-07-14 23:45, Karen Lewellen wrote:
> > Hi all,
> >  many times I have shared that my entire Linux experience is tied to shell
> > services.  Dreamhost for my  employer, shellworld for  both my personal
> > site, and an account with them.
> > Because shellworld is still refusing to incorporate current email demands
> > for ptr records  for host names, I am wondering how others manage their
> > Linux experience.
> > If Your host your own email, have the equal of a Linux shell with several
> > browsers and convert tools and so forth.
> > Do you use a single dedicated computer,  different hard drives, external USB
> > drives, or partitions of a large drive?
> > Aside from educating me, perhaps learning how uniquely one can run Linux
> > might help others new to the concept.
> > So, how does your Linux garden grow?
> > Kare
> > 
> > 
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

