Return-Path: <blinux-list+bncBCFIHJ744YGRBRFM222AMGQETMNWYRQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 39344931CAA
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 23:36:06 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-447fef8f3dbsf61331311cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 14:36:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721079365; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ww/9rTOe3eGndfDmn76ZE/dHk7qDfnqoWEZRAhqovopPUb2BRLcxdY7rD3Mkz/N5te
         WDVz41/q+XXiJp4Pk8b3d+nJHTDcYQR4IAUfZHsGJ8cA/RP3r8JI1voXLOP1HFk9aTuV
         DWdSK9YsVytvSdUmW+wbeK/EHaPlP1zBaHrJotQpb1FlrxSmOqBNM1XmqJW8pcWcJYse
         v7CwhcdKUpg1N7zMERiql03H+qI1M4Q2+cf+5ajUFxqs/0XIViNz1ghAZIkOyz2EzOt/
         5F8OrqD2sDhnkKL4jlqICzTMW9CL21Z9F6l9hLIo1az6Nhe2JDjsuT+Oac7FYGEMXSop
         pfzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=MCe2qRx0MrTq418MIR+X5ucK+Hb5kWnKqcnvdvZ31YE=;
        fh=kqBGXmExUCaTOdDpJCaVI9rl/P3Ka2OFAKN7+D/PE5E=;
        b=lK1tSFPnzvowMuHkQnVbogkukNyJ1xLGusoR1t4E5kZHaVUGFBPyGNzMP+NU9D7wGf
         PI94gjYixMx3VIve0ogIOr76Xoz0Qk+McK27x7sK6QLvyDzQBYAWy5OunK45CSoHTqsZ
         fpMO9Pgfx6/A+iB67UtFMOVLcg6b1XIJkqhqvisTJIluZj6yNze39Vk5PbzEii+pkSGU
         17/1EHHyur7JDqdMkQzfCbSrkLRDniohkx5XCAOKAEV2Sv0sD9Ntxq4jku3g8KHhS2IM
         yZmYxSUlBfjgcV4ruYYh8A/As5XLsJhM4ogHosaGOT7kNnlUjVqSxDAHj0H0u9thsBJI
         qKIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721079365; x=1721684165;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MCe2qRx0MrTq418MIR+X5ucK+Hb5kWnKqcnvdvZ31YE=;
        b=LT+SoKYcuCJyDrvNFWxa+lck3d1aGiLu6njVFZpGEGV5eyERwHkmhZ4Ui24O6NE4n4
         Gcl17PbdKvDSHGFwjSIA7c/gHlytA9GTxsAZk81T82hwuDm/cGO4+pXoBw2cqakn9m4g
         CYhH2VSucVKvggyz//J9I4rG6Z71LNv6Vmk1iAjsgo+w4NdB2aJTNEGuBHnL6cBI6Y0m
         ghLtHjhsRyjcccgYEno0Yn/LX0veamx1fmQNTq4P7LTGhMinREiycwHNtaVCgroa9o0Z
         jz633zXO4pfmsT9ZvL1GsdUodzX0pL5CQhbaKyo3XLzVNxve6qp+92o7nBidxjgbBmUR
         nIhQ==
X-Forwarded-Encrypted: i=2; AJvYcCXYdBd5YBtQvkwHZotRVJV4JWe868RC6U0XjsDyuYpizKgR3YPoCmvfyzukoeDp/RGOpsWFW+3Nx1RkKrrYvBQ37UqzkUUenhFQ
X-Gm-Message-State: AOJu0YzOWKBIv2ljzG1Dxu4KLwPPiRjcm09L29yFdxlJiSVQ5PSZFcwQ
	deIKlQHsBxCsMRJjrI2wFmjPazxzr+IeqsmmwYURZCvRwm7azo69ZfwNYaukcrk=
X-Google-Smtp-Source: AGHT+IEqp8dvIT3yMpaMRPvkajmhmv2lEaQ7IJfERVFBY/b3tXehiRTGxtkqeai1KsxUED5s6i9NWw==
X-Received: by 2002:a05:622a:1212:b0:447:f4f6:7a1 with SMTP id d75a77b69052e-44f7ad19e63mr6554081cf.52.1721079364775;
        Mon, 15 Jul 2024 14:36:04 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7a96:0:b0:440:337d:f8bb with SMTP id d75a77b69052e-44d03389fa1ls73892101cf.0.-pod-prod-07-us;
 Mon, 15 Jul 2024 14:36:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW6Y237lUs3L0l8Om2boyXkpXhr023VzkG5UcYAblzR4bwl/BnAgwKTDmKdUM1lU+HebV7EuNx972wAoKL5x32evwC/eoJg5aABT85c
X-Received: by 2002:ac8:58c1:0:b0:446:5568:a6de with SMTP id d75a77b69052e-44f7ace4432mr6827971cf.48.1721079363945;
        Mon, 15 Jul 2024 14:36:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721079363; cv=none;
        d=google.com; s=arc-20160816;
        b=0ueFDmAniRdqksxeYo/8k3jbgPPM0Ouasu1SLQMqLbtxfowJGzkGyNNRnZ5vLv0zag
         tdjOzOqxzybMIaoonBCgQJrV6P0U07hmT9mRJDuFHoCAB5lDmDhWe2sOmKw8RxC4pOYi
         Ka5HXRb1ES5LvGtu/WBWIZh3rlHdbMuEOeRWwMg1N2q+1yBPpim/brcEEWYWb31vx+TK
         K+2X/ETtwI6kdv46f/AjgfwvuyTCLCWQh/NfJDTBzU26jCCscSUuSGD4E70EmcVEEto8
         b1RkY0WF0ZSkghpwce8uvfdMlxCXKiBOS5AoSrhwA5nZDdyib0KNjzN/C1BbDhmAEaCQ
         Om8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to;
        bh=VrfHy7y5vHQK9y2U+m9BvYsCNSgasp1o9U4LaOlDF6Y=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=aD/EnPjrd2qZhhKJWMXPUUeyq2kKekOeCJmbiqstZCdf+efXpFkiZY8908IESxxnn2
         Qo8IJ1KWAWHonD4e6sZD7MD4UcEOqTLPfrxG/PVYCXVLhbsRN6S8QWuH6oq521PlAvyg
         hS1oxKvHXS0wZuIfxbZ4mn0YinaxeR0ln9MEwWlz+QRoHZXzTQ5wMnGHGri6UlOOYFWG
         6D48NNXLbwIHdzZTg7kWDGikVokgNPCoVmHf1W1nYF/kf2jNyAXpzCe2SvxMedwkZIEz
         U1XOwdEbi/TGfspnwGwZOqZBoPSWhzXSLrbhfOVjm2h3tWxLqFB4ZE+Rucz1uKSxMSaE
         O92g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b7f6512si58069181cf.280.2024.07.15.14.36.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 14:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-640-96eGNpEGPha4Q4UTv9WDvA-1; Mon,
 15 Jul 2024 17:36:02 -0400
X-MC-Unique: 96eGNpEGPha4Q4UTv9WDvA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8879E19560B6
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 21:36:01 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 797E11955F65; Mon, 15 Jul 2024 21:36:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7716E19560B2
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:36:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F10241955D4B
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:36:00 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-57-3fmvZYShN9eUbK42wXuzBg-1; Mon,
 15 Jul 2024 17:35:57 -0400
X-MC-Unique: 3fmvZYShN9eUbK42wXuzBg-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 25840ecf;
	Mon, 15 Jul 2024 21:35:56 +0000 (UTC)
Date: Mon, 15 Jul 2024 16:35:56 -0500
From: Tim Chase <blinux.list@thechases.com>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
Message-ID: <ZpWWPBC3szmpqODv@thechases.com>
Mail-Followup-To: Karen Lewellen <klewellen@shellworld.net>,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
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

> >If the server is running an RPM-based distribution, then rpm -qa, but it
> >will likely print out a list of thousands of packages
>
> Is there a way to copy output into a file?

The usual Unix way:

  $ rpm -qa > list_of_packages.txt

and you can then review "list_of_packages.txt" as you see fit.

If it's a Debian-based system, you can use "dpkg" to obtain similar
info:

  $ dpkg --get-selections > list_of_packages.txt

which will include all installed and installed-but-then-uninstalled
packages.  If you only want the currently-installed packages, you
can use

  $ dpg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt

-tim




To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

