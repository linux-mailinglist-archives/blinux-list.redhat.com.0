Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF1745AD67
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 21:28:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637699319;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OQ1eZpInLHjjHjRCehhjR9WinKLQv8DSfB27pJgoFeQ=;
	b=WExUUlvcHKDwm3ymMmny8nC1UuQWsO40tlXMVq7b5nvulOy+VItpPYnVVcNOVebirpCsYc
	Wl4FDCSOLTnhAWtDfvm/y5xqwGN7mTYS5dLu9N6IPeRMo3rwIWhQsuLekdPdAkuCWJSmXt
	PMYeGCg50QA9B6kDskxGAStj++pjDUc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-306-ku8IGcqUPA2p4CHX2q26Tg-1; Tue, 23 Nov 2021 15:28:35 -0500
X-MC-Unique: ku8IGcqUPA2p4CHX2q26Tg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CD1F10168C0;
	Tue, 23 Nov 2021 20:28:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BAEB35C1D5;
	Tue, 23 Nov 2021 20:28:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 56F644A703;
	Tue, 23 Nov 2021 20:28:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANKSN8g007187 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 15:28:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2289551E2; Tue, 23 Nov 2021 20:28:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16B9051E4
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:28:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E277A811E76
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:28:18 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-377-lljCVSkJMeulS8SI3tzsxg-1; Tue, 23 Nov 2021 15:28:17 -0500
X-MC-Unique: lljCVSkJMeulS8SI3tzsxg-1
Received: by mail-qk1-f174.google.com with SMTP id 193so407564qkh.10
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 12:28:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=+lEsLXKZW56r7HYsk4VElRuGv5r8R7b2hoJqGUcds5Y=;
	b=3JYwU/pnoBjDQZr+IJ5LmjeO9uor70Ji1pK9wyIKkkr10eyfVpyNn/x43XvWWOhnvG
	cmf8QFk3zSwkC8UYGXGL5D5Q+d78GgSB4ZkXHiOwBi1FTZkhzQ3wi5PZl3st2LhDo3DP
	R9ws5acCwLj8r0yzh7fi6/EWRuzCMMTVO1+wKkwf+hAxjoKL9bTuFHiJ5vQINK1BMra5
	hhYUtglwU8Bx7bYSQs0CgJHN/MLlGPHUQE2qO7SwUbaUu05eaybIIu0lG/06LAjIRU89
	pfFOTGJqBsiKcyVHe1jWQymfieoz9tGnAKNs4RPUjU0LU0koLdyvjC5yFVZPUgmsyPqn
	AeXA==
X-Gm-Message-State: AOAM532qYah7Gy78OaZFBIhNXuw2tEDGHkZj3DVVz3pJHy8Xv0PNCm8Y
	Pgg09QWHwScsPYQhyHS98WGCkfVeESxChpCkkHpi98uu
X-Google-Smtp-Source: ABdhPJxQzUQnCsJ3E6YlwZbIbsKrJbQkYCLYcHnEQDFmnWqNYFMAaokCc5Q3u4B9mj1qu5+C0G7788oHe4epO/7TsFg=
X-Received: by 2002:a05:620a:c50:: with SMTP id
	u16mr155490qki.203.1637699296420; 
	Tue, 23 Nov 2021 12:28:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 23 Nov 2021 12:28:15
	-0800 (PST)
In-Reply-To: <5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
References: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
	<5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
Date: Tue, 23 Nov 2021 20:28:15 +0000
Message-ID: <CAO2sX31T8cTcUHZL08o0Tr-oaqZr-=ZhNZCjUvpLo0jz3dyWeg@mail.gmail.com>
Subject: Re: Can I upgrade Coconut to Mint?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In theory, since both are Debian based systems using dpkg and apt, you
could add the mint repositories to your /etc/apt/sources.list and then
run:

sudo apt-get update
sudo apt-get upgrade

and all of your installed packages would be upgraded to the newest
version provided by Mint.

In practice, you'd likely end up with a mix of packages sourced from
both, even if you also removed the Coconut repositories since the Mint
version of a package would only be installed if it's version number
parses as higher to apt... but worse, you might run into conflicts
where a package sourced from Coconut depends on one version of a
Library and a Package from Mint depends on a different version of the
same library, you can't have both versions of the library installed at
the same time, and you end up with a tangled mess that in order to
upgrade some packages you must downgrade or remove other packages or
swap a package that was installed as a dependency for an alternative
package that meets the same dependency... Granted, such problems can
come up when  upgrading from one release to another of the same
distro, especially if there's an intermediate release(say, trying to
go from Ubuntu 20.10 directly to 21.10 instead of upgrading to 21.04
first), or even within the same release of a distro if the release
gets frequent upgrades to individual packages and you go a long time
without upgrading, but competent package maintenance can keep this to
a minimum as long as you stick to one distro...

As such, it's generally recommended that one does a clean install if
they want to switch distros, even for distros that are very closely
related.

That said, if you have a separate /home partition, you might be able
to migrate user setting simply by leaving the /home partition alone
and creating a user with the same username as the old distro, and
while it won't give you afull list of installed packages(which might
not be all that useful, since some will be libraries that might not
exist in the distro you're switching to, if you install the deborphan
package and run

deborphan -a

It'll give you a list of installed packages that aren't depended on by
other packages. They'll be prefixed with their section and one per
line, but strip away the former and put them all on one line, and
you've got the argument list to feed to apt-get install on the new
distro to restore most of your installed software.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

