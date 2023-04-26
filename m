Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5255B6EFB71
	for <lists+blinux-list@lfdr.de>; Wed, 26 Apr 2023 22:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682539291;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8gbdDWm+j4Ysc4VouW6w+1ekgGhDP5BZkR5SDi9lXQs=;
	b=YCkAGpEkhPU5GeVFpmtt6T3gSZWkcNNiIWHesIE3Um5HEXsj4SQy1zW+Du5vcTL0Y1ihrB
	y12quMqTnV2jLOnFwzD/ox4ThPESPMpGLuGVbiL8mn0z1rwla8ahmO6u889tffR1x0ibO7
	kTjlF/Yvw7TlPbJq5dZI+kzP/H5BMGQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-385-CU1qZnyHOy-lGwZ7nj0GZQ-1; Wed, 26 Apr 2023 16:01:12 -0400
X-MC-Unique: CU1qZnyHOy-lGwZ7nj0GZQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4482D3C0E440;
	Wed, 26 Apr 2023 20:00:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B98F42027043;
	Wed, 26 Apr 2023 20:00:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 150681946A48;
	Wed, 26 Apr 2023 20:00:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 26 Apr 2023 22:58:17 +0300 (EEST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Configuring terminal and referencing username in bash scripts.
In-Reply-To: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
References: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1993.1682539236.2351818.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello

Terminal emulator does not care those files but check what shell you are 
using
echo $SHELL


You can find all environmet variables with command
env
to see if some of them will tell current username.



-- 
mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
http://sokkona.arimo.info


  Linux for blind general discussion kirjoitti
> Subject: Configuring terminal and referencing username in bash scripts.
> Date: Wed, 26 Apr 2023 22:22:49
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> 
> Okay, so I've been using a ~/.bash_profile file with the following contents:
>
> rm -f ~/.bash_history
> export PS1='$(tty | sed 's#^/dev/tty##')\$'
> export PATH=~/Programming/bash-scripts:$PATH
>
> To clear the command history from the previous session, change the
> prompt to something extremely short instead of the default user@host
> /path/to/working/directory, and to add the directory where I store my
> bash scripts to my path.
>
> It works when logging into the console, but I recently bought a new
> desktop and decided to give running a full desktop a go since I'm no
> longer running a 12-year-old CPU with 4GB of RAM, and whichever
> terminal emulator Debian Mate uses by default is clearly ignoring
> ~/.bash_profile.
>
> So is there somewhere I can put the above lines so they'll besourced
> both when logging into a text-only console and when launching a
> terminal emulator?
>
> Also, I have some scripts to automate sshing into some remote hosts or
> mounting the remote filesystems locally, and part of it involves
> creating a mounttt point that needs to be chown to my user. Is there a
> shell variable I can use to make these scripts work for any user
> instead of needing to edit the script to use the name of the user I'm
> logged in as?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

