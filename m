Return-Path: <blinux-list+bncBDGI3AUYYYCBBUX5QHBQMGQEO3FYJ2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 868AAAECACA
	for <lists+blinux-list@lfdr.de>; Sun, 29 Jun 2025 01:46:28 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a42c569a9asf79150321cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 28 Jun 2025 16:46:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751154387; cv=pass;
        d=google.com; s=arc-20240605;
        b=MZQnIIfm4DpSJRK8Ee89MokZZYrFAa0e7ij2oI7VGIKB9wUUXhEz8uasIz0tCYX8DI
         bOP228okoPFHQFw1hN1tHqEMWjlIB4/06hG79g8kB7bsuFsMteUuXiZK0bKI2FqBRNGS
         MQAz6mDQFKRp/7mnSqdz9qmOeoVAX6Tviz9u6Og5vyxi0ppk3CtWbLY0+Lghr2GBuywl
         PpbL8+EwSW6LDo9gpGvMcVQc5ewHdcitRx3fI/5ZgWeEoCG9OK3EZVVBSFY7Mr2lvekQ
         zE25whHxtRe5V1j+jNHbj04wfzMxYMehmHSYxBSi0PJ17m2FkgBOzu5FLyYczqexgbVd
         8cvA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=iFgKJ1pBecVGHGeisqqopVpsTrgK24bsi8kTo+hsxz4=;
        fh=dhUs1yFaKCY1EYX1aBl5rBAXlBCZWKU7yEjVCXqGTgo=;
        b=VUItnVKsAwNsKUu3sxuhMRP7UhpWxUxljuiAUruWjSog/qBLIr+bSXZHX5jIZ36mwt
         BMYKOfSziZM1LbLwy66DeUMMqUaBxDHNzeB+H6Qvb+vZMDSrewcq1q1gN3jacdyXzGek
         xh88MGqbWdpEYOAl3gxneyZYZ/4LRcXCMo2JDP+bjyQXQPlG/Bz0JKlVefoWqBwuyIi7
         07uM/bRqCaWtJ2rZ/lzZR4TdWlyhelEzLrnrrlrcUY/GFBWpsLVc4WhTmEPWHpJNExJz
         y8WDUjGHCBiD93Zd4r8GXb0NxWUeyrnFjKaNYF6EHGFxud9Hlgbu8CUC7L0GA6uZosUg
         19jg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=nZotg4dP;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751154387; x=1751759187;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iFgKJ1pBecVGHGeisqqopVpsTrgK24bsi8kTo+hsxz4=;
        b=FwHFRN5T21zCK0CBcOuX18gYpLE5QUsy9+udV0khLMnOXce9SjUV49GPgW92LFwNSF
         pkw8rPXHWePfjyjcEIoWHfa5hElWAphrT+dsgi8LWPyKt2NbdqM3I3Z1ZdMUcjWHRIqv
         rk5Lx5hrh532u10Y0ZJiwfCakTe/oLcPWGqH/lK9fVzwoQv9sScV/noEkSJUs3/mBOE4
         UX31BuQALsYWHnZocKDAe7VNs5tipsUUJ45xqBHyt5/n71CcgsFepKXuvNYfscZsmGa7
         DJZuGVgmbi0XoWdYFAC1zHD1gm07U/EEmrSMOdsAyOHhDeeuGUpHEY5KZYESlSuV/k7G
         afqw==
X-Forwarded-Encrypted: i=3; AJvYcCVaZdL01sfq8jwiK+4TS5x4/1bZNesIP6POxnc9EicXgMAnfLqoPGdxQFYg4TYyNI3Jmkg1TA==@lfdr.de
X-Gm-Message-State: AOJu0YxwRz46PvjDZpi+PZw7ntp2pxZIfYRET1ubFPSVEwJDeEjSlG69
	7CFmFCI1mUf3TAmb+xXgkCjdry/i57l0M0ZKdUBZCc58eF1dwULxKKtQJkqseaS9vl0=
X-Google-Smtp-Source: AGHT+IH17Bk0F+5ES40KqktyLdZpZ5Of8F2O7kJp5P5cIdJW5G1vPsH9qjGFKDQbx/gUNelrYpNfxw==
X-Received: by 2002:a05:622a:58c8:b0:4a4:31e0:c824 with SMTP id d75a77b69052e-4a7fdc3e709mr126899651cf.19.1751154387007;
        Sat, 28 Jun 2025 16:46:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcY7T8RRsrhcZPog2Pl5G7ZhOcHkyLOh8QWcVftkY0wjA==
Received: by 2002:ac8:5d01:0:b0:494:783a:3a5d with SMTP id d75a77b69052e-4a7f3857a9bls12188741cf.2.-pod-prod-00-us;
 Sat, 28 Jun 2025 16:46:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXgxpjyCew19XhpFaXpvomkLXhxZcrfvs5SLJDvW/59Das4/33TQ5lCG2d6p2XrLN+acf4GNy7ZzxfLiw==@gapps.redhat.com
X-Received: by 2002:a05:620a:4587:b0:7d4:3b37:7bf0 with SMTP id af79cd13be357-7d43bb918eamr1790708485a.8.1751154386238;
        Sat, 28 Jun 2025 16:46:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751154386; cv=pass;
        d=google.com; s=arc-20240605;
        b=U9NzZ9eXFZCQVl0iIfXqzjkrkYtgEjSQNnlDgZnzOJ2wyNTg5J6e2DOJSAki0XiEJf
         9EvI0KO5KEsh3DPwP6pEYApIobL9dM0wnhQKnb2K4Ny2KE8WbkG0t3JaGykUiK2rZbB4
         GH4j7RTobd/AbzxumFtI5h1TZeqoOJ9FsxiuQ8N5febjBJeECl7qs5rHhkFEoR9jE9GK
         QCqAhZWokrwDluja9jpRLUnmDZP7K0ZdOeHLjBJ7wp14JqC3kurHcqwWNvVzrg7/qskh
         pCxurLIt2PHkZK8jSDFj47ZK+WC5HBCQPKJJb+KEyxPk56YvpPbJZPQTEfbXzG8NU1PS
         4jmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:dkim-signature:delivered-to;
        bh=fvpJjnSLd3+sIgL7C3rKhq+bRa7+W/TTH5m6REXwfEM=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=iJHf8viFlSfXP1LUU35YBh7NK2QUp7Nr7AAbSne4sMq9eYeEsYbvjp94AA4fRPdWmF
         SsRTfO9DCdHYTVbSC4SJByc2VjN92nK/yEhg6iYUHy6FFjj/lviDEJNlnu3zqsKO015s
         np/acM666frWUN5jIkDz6mU7Msd6bwnAB3jkLWf1o2HaRvNkjoTmeEZzEv5vF3NbLMIB
         7mOOswoR+laQenCadf/6d6g9tvZehLU2ZyKCxDYQpkOKoZPk76ZepT6KmXV3izYiv4Ih
         WOmHqzes/nwkKQ1tJnnCG0Lfl0YRZQk5HiVZQc7fCCmZMkMZXuLZuktlalesr68mmLap
         iaUw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=nZotg4dP;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc0ff210si48411931cf.128.2025.06.28.16.46.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 16:46:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-113-xrEtte7tNB2Ua99Jd56G4g-1; Sat,
 28 Jun 2025 19:46:24 -0400
X-MC-Unique: xrEtte7tNB2Ua99Jd56G4g-1
X-Mimecast-MFC-AGG-ID: xrEtte7tNB2Ua99Jd56G4g_1751154384
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E170F18001D6
	for <blinux-list@gapps.redhat.com>; Sat, 28 Jun 2025 23:46:23 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DCAEC1944CE7; Sat, 28 Jun 2025 23:46:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA1E11944CD1
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 23:46:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6CF581956086
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 23:46:23 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751154382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fvpJjnSLd3+sIgL7C3rKhq+bRa7+W/TTH5m6REXwfEM=;
	b=lrgnw/026hJhoonxqIVvMBFV4JC/zSKPZz7bkef5OBpyn5KB1GARivTYCFfLCAKlaXwFKN
	BAjfJwLq/7vLMWWm864EtEmY8A5HxU9KYA9ALxOtERv3DH9rSTIxr/TZFOU0Q6GWe+iW65
	O4k2A24ECRhpflbHAuPOo9ptTjqYOsVccGKcWcY7fvLZqShfZkYHaFpiD9Z16RQITNTlt9
	wSAU/UANDz2g1tV9m5oSAzGGRvBPea42ToBb/x5bQNBeF9mviuNfrDKTNjIqBb32oOeh0m
	BrD7XSeccm4cEhMNsmLgs/MTCPNEe5Tyub8rTijr5utsT9bt1z4kRIhwgvJEkA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751154382; a=rsa-sha256;
	cv=none;
	b=UyUkmWwMJTkF1jf+XIRBVB+Gntj+JmEI7gls5WnFQ1zlPEKG7tiPMHm+JE7+u2HX1sGZO2
	2tJU1VPxqRU35uDz7JGaNFn4e5IEvpsRqdI09SQ4gdrqXnLRlwFtyS7Nbn2o0FAgJkraaq
	Ia+Y9q0U3BHBV93U8o+l4bmPhhNJgweHBO7ISgfDIZcnXu6vGcIPSRVFgMs4H+LIxC+z7M
	vzZHLu5t3czx5w75q+lnI4I9cm7fqoEKwYsG2z3wxaMevlhCNdDJvq416ANvJ6qEqvjl2h
	9NYwYUq5xB3+blNa/+HW+PXyW6CHUb/nKOWoz2PiAo2R8UcjYVjZl3zHX0/Crw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b=nZotg4dP;
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-6-Hr8tVTAxO4-oPHoeHQM8Fw-1; Sat,
 28 Jun 2025 19:46:20 -0400
X-MC-Unique: Hr8tVTAxO4-oPHoeHQM8Fw-1
X-Mimecast-MFC-AGG-ID: Hr8tVTAxO4-oPHoeHQM8Fw_1751154380
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4bV8Fm2xWPz4bjc
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 19:46:20 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4bV8Fm2kBTz1QXM; Sat, 28 Jun 2025 19:46:20 -0400 (EDT)
Date: Sat, 28 Jun 2025 19:46:20 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Orca firefox tutorial needed
Message-ID: <aGB-zM-Q3gSUoZu2@panix.com>
References: <aGBQto8CI1W59UzK@panix.com>
 <CAO2sX31hxdMOFTDTQExNrwgkjwX5hxVYM3=6mBkB=n=J+jwObQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX31hxdMOFTDTQExNrwgkjwX5hxVYM3=6mBkB=n=J+jwObQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UEGn0OwTnyvkGs0zZARrSP_2dJKvCzI6TWhUNGibq9s_1751154380
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b=nZotg4dP;       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of salt@panix.com
 designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

Thank you. I'll go check these out now!

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Supreme Court Justice Barrett Blasts Justice Jackson's Dismal Dissent https://limerickdude.substack.com/p/supreme-court-justice-barrett-blasts
Website: http://www.rudyvener.com



On Sat, Jun 28, 2025 at 11:25:39PM +0000, Jeffery Mewtamer wrote:
>    Not a tutorial per se, but
>    Mozilla's support page for Firefox's keyboard shortcuts can be found
>    at:
>    [1]https://support.mozilla.org/en-US/kb/keyboard-shortcuts-perform-fire
>    fox-tasks-quickly
>    And the Gnome help page for Orca's structual navigation can be found
>    at:
>    [2]https://help.gnome.org/users/orca/stable/commands_structural_navigat
>    ion.html.en
>    And I'm really not sure what general advice I can offer beyond learning
>    those keyboard commands for the browser and screen reader.
> 
> References
> 
>    1. https://support.mozilla.org/en-US/kb/keyboard-shortcuts-perform-firefox-tasks-quickly
>    2. https://help.gnome.org/users/orca/stable/commands_structural_navigation.html.en

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

