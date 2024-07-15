Return-Path: <blinux-list+bncBCFIHJ744YGRB3WF222AMGQEJDGSKCY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A189931D2B
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 00:30:08 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-447f8f26834sf85227561cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 15:30:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721082607; cv=pass;
        d=google.com; s=arc-20160816;
        b=zYkmGmIyq3watp5acQKqAhmMVMwdNF97K16yALGODh6SM9UJBp1HjNN8jVaqNGXFOu
         VFYl5XsYT2uWIzimAHW3E0OFnNxxOraCAdeh9xgfZYXlwMGUIdzsCOVeTIHMPd8Gcq6s
         KLFxNvsonN1xQ6NWJ/1kKyBVhVc7iqg1PAkTplM47Qs0LfYBfgS/X2XiSsJd9G1GVZon
         hp7vsWWxEVqNU+6EJkSyDOEb4chXSeN7vIWjTww95zjsSFNGMFYSxHAkptdLlGnxe2JX
         c/e4eW73aYDsZgUumJ22RUa2vZ7LSsUVvCubwOo3vgCwCG9w5S8QJDGTiD6D5vXnLfV6
         YlyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=ofdD+1P+2PjD0ZbjwyKeRBuxv5NwJZ2QTESRD19dCm4=;
        fh=P7apao/Uc+nNCBJi6kSvmYNyQVGUf/yD/ek6EzJg+mw=;
        b=nIt7nqpkcuhwy6MfcmVG10PMT9Dv3RQdb4PuoeRKtFYMgzicGHI+L2pRBzSoRf4QkU
         s5pu41cuIrK0o3glwhMYFez3gZEgHk3yUVVDajwTNdNxLJh3AawYyk76xqoMonTrWYRi
         5n1L2O6SUsi8Eh7RGO2t0gVZultFBktbTAqrorg1a7yqYAa1BnJjJem1XTOW/o08Hw6X
         qOcp2KHZ9izNsi5PfVKge74BC4V0qaP/YAt/Fonk3jzw+xkpHCb9GqP5EanZIGj0x7oh
         7HCs+2ayYCFS7n0+bKGsXbkDfS7lfVdXFEIu3YsubMxCbzfqDg07Oc0AbllMJKCAIiJZ
         c22Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721082607; x=1721687407;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ofdD+1P+2PjD0ZbjwyKeRBuxv5NwJZ2QTESRD19dCm4=;
        b=muNGsV+x5M+0TqfuwCbzUE3Z1kkzIMAf6U7Xkfqfod2ZEww/OTijApXoj4TUprBUyS
         o6TZ+gNU+ZqcDh8LTvwFXWzW0FyCrno1M4HD0fx73fimDFhstej/XzlnhHa1qw1dmif8
         d9v0eCNp7nRI7HrRhOnQQzUFcvyKEzTFUedIEzGvE+54WN4UoPDqiRieF8YMPkFw2xZT
         ewRufaHMdXUHtI/bUhgXbiazaZmn2QPR8nivjlGV9oFpLQJE0ldP1/jmt4lSXGcTQzQe
         T/T3wzmCV36hPMlCJ/FxINVzKC6KxdbP8LJnEtupQNtg1UELhI3Of3wuEYpPkr7troK8
         /a6A==
X-Forwarded-Encrypted: i=2; AJvYcCXmNL1PREQGhxsbkUDJWBFpN4qMsp0LgBfjP34n4xRtT6ZM59AlFEtBE/EJSmuGx/nvklWarSXpMCzmPGiQdxleMD4xKMSe74l3
X-Gm-Message-State: AOJu0YwJTzTvSqVJ8FLNYqD/xpMXQts33I5drMntCFlBZjUqPO0lg3iL
	V2TS7AQyAR3sgxJB+HG7WlZeBxFX+pRixB65o6XxFN5n6PZFrzu91jfzMj8VEng=
X-Google-Smtp-Source: AGHT+IGb4LmLWlddkiYM4YeyeXDbWLhq9INRhuzAMhKqhYrbBz83fdOLRkpy49iaZ0tUSk9sLcFN9w==
X-Received: by 2002:a05:622a:1207:b0:447:ed59:dd2c with SMTP id d75a77b69052e-44f7ca3513emr439131cf.18.1721082607174;
        Mon, 15 Jul 2024 15:30:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:448b:b0:440:38e6:c194 with SMTP id
 d75a77b69052e-44d0857de8fls78558621cf.2.-pod-prod-00-us; Mon, 15 Jul 2024
 15:30:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWlbhcN+KAU9SyWmGhFjNG9p2H4JFfsMRhQrwtUvPLTumWOfPyC16QC4Q5Gq77SOi+BEmxid6/3qyvp74FNMd6ML/nXGGorJE+Yxh59
X-Received: by 2002:ac8:7d11:0:b0:446:5b56:989 with SMTP id d75a77b69052e-44f7ca0d05emr546571cf.6.1721082606465;
        Mon, 15 Jul 2024 15:30:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721082606; cv=none;
        d=google.com; s=arc-20160816;
        b=NWpNrE+vzGiitzm4JCDWX3mTbuaw7PMgDX68PqQli0eEbNZ79KEbP4FZxdlzSy1CFS
         qw8lcZ1jvnlc9/zBUtRLrPsOPYqC2l4gLJ/kuzPrCmzGLM3WadVhhaJvuTBXMNcESd4u
         btmdLqk/dS7WiYsGmoLmlQX6z0FxFpHOVNKRXX7zDOaqbAiH+/plUFySV9vBOIUDMETS
         o+mPmBHuWollhKIo0U3Kjh6KduVi5RpY+96EDl2N2fmRtj9vjMW5I2/6vkdEIthKk3r/
         YOLqGeDiw26XGWSMBnl/SCH6naUwOWek4xV6hmo8kH7ZQG5iyZ/aMzDxEBtUDH2lSHvC
         AN6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to;
        bh=Un3jGcW7eGfRTM3/DL346ukRjw9NULvCoDLIZkybP08=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=EJIWBnZGK35uycNqEh5HBBUz8ZTFnJa5gmg7bcGmfVStuxJe9iy+ajxRItMQ/k+12M
         HFu2JjiphAp3fbJWMxWzMWXkTWR13yU+SSJ4a67mAGrNTfM3chOHhjQXejpg8miOd2Z2
         vpnTutYIH45a6xeDQuQi1oz/OSbsD7sOzlf6w/DarTirFbMTs4Lp/nP5xch0Kz73xByS
         ajTvFGL4biC1SFAl3Hh8jn+7Qe5j0N5908s/UZbj6B7LpKi7SGI+UQCDR4AidE4neCeN
         mWavFtFZgWwx5jtCDdMwsP+PQhY6z+slKO4zzf+u7+qSsfgK22JOP4kAs2ir01x3QHA6
         XDNA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b7f6c15si62129351cf.300.2024.07.15.15.30.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 15:30:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-65-X3Jfv_eDPp-XP_0GCydT8w-1; Mon,
 15 Jul 2024 18:30:05 -0400
X-MC-Unique: X3Jfv_eDPp-XP_0GCydT8w-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 55C3119560A3
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 22:30:04 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2779F1955E80; Mon, 15 Jul 2024 22:30:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 24DE61955F3B
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:30:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 76AA319560B0
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:30:03 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-169-YzZG6WnRNzakT0KcuhXmgw-1; Mon,
 15 Jul 2024 18:29:58 -0400
X-MC-Unique: YzZG6WnRNzakT0KcuhXmgw-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 17f1df32;
	Mon, 15 Jul 2024 22:29:57 +0000 (UTC)
Date: Mon, 15 Jul 2024 17:29:57 -0500
From: Tim Chase <blinux.list@thechases.com>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
Message-ID: <ZpWi5d1A4TkwT3n2@thechases.com>
Mail-Followup-To: Karen Lewellen <klewellen@shellworld.net>,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
 <ZpWWPBC3szmpqODv@thechases.com>
 <Pine.LNX.4.64.2407151750350.3550890@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2407151750350.3550890@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

  $ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt

The "dpkg --get-selections" lists all of the packages, then the
"awk" portion filters it to those that are currently installed, and
prints the package-name.  The results can be dumped to the screen,
sent to a file (as above) or piped to "less" for review, whichever
you prefer.

-tim

On 2024-07-15 17:53, Karen Lewellen wrote:
> Hi Tim,
> the goal would indeed be currently installed packages, seems to be Debian,
> as dpkg seems to be here.
> may I have the command for  installed packages again?
> here it starts with dkg, and I want to be sure this is not a typo.
> 
> 
> 
> On Mon, 15 Jul 2024, Tim Chase wrote:
> 
> >>>If the server is running an RPM-based distribution, then rpm -qa, but it
> >>>will likely print out a list of thousands of packages
> >>
> >>Is there a way to copy output into a file?
> >
> >The usual Unix way:
> >
> > $ rpm -qa > list_of_packages.txt
> >
> >and you can then review "list_of_packages.txt" as you see fit.
> >
> >If it's a Debian-based system, you can use "dpkg" to obtain similar
> >info:
> >
> > $ dpkg --get-selections > list_of_packages.txt
> >
> >which will include all installed and installed-but-then-uninstalled
> >packages.  If you only want the currently-installed packages, you
> >can use
> >
> > $ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
> >
> >-tim
> >
> >
> >
> >
> >
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

