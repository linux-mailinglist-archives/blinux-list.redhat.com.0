Return-Path: <blinux-list+bncBCFIHJ744YGRBRHB222AMGQE2INBDIA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE60931D9C
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 01:29:10 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b772457b40sf26459556d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 16:29:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721086149; cv=pass;
        d=google.com; s=arc-20160816;
        b=qHWZHLqw6LespZEv4xIrqNgrn6qlxPwZCeWyfOgzF+Cj/c046CTYyXaS+aTZRLb+dq
         xlG8P1s9R9hZnEczj4olASJI0U4SsHjDplTXZtEX1TLoXoaQ6O7A7hS4M6VBFtds1uX5
         MZaQF+DcF7MuDPwSifQeOtnqhH1FKwWBwYV8AdEpgfHHjoQEPa6fXnqp1HVsUQ89G4SU
         qQczDRsWGC1n/cujeZdzO2JMzAZbi+iNWxnM+fWhy/I1PbngHeXkXWKQsQchpX0Hp1dh
         R75TUq8hvEZdF3O2UdDp6yYA1I9xmKdi8KFuTBBIrBbYUgICsWYYGosiq15qwQWbpgpC
         085Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=ukX6KATt/wEUzPjg/dCFswEujQZz49w5n+1gt27EfKs=;
        fh=a2vW8ndVQESWwkPaskmQl2x5MWqhLvwLrlYxOSmdQqU=;
        b=ocLfXO1lL0TnkhXgj+CGtXUzb05v1I5PdrdpavkmFJ4vOSbsIPZehS3vEJIkvAcN6c
         XG0ZDTR0HdaimiZJwIrV+/0NeG77wLZP4/fXAFoncN+yKZcfZhSLp4EliYAz3jqhjDCl
         Y9e6ZckzZdmN/LIslw9M8ogSsKnluNN0Ak1Q5Z3QoR0GptmNkLrw4zs7dbt0V7cj3uda
         K73PuqoF1Tmm5BqSdZaiC0Rlh5+LJNBYjmLSPATQYZKHF4VKH8s+2HhcceJe57xaayWR
         W/f6lwXUHtIzqzsQyBV1t77S62YImkIFYsW9mD38KstjMpvryS/st1M2OU+cYlChhqVg
         XL5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721086149; x=1721690949;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ukX6KATt/wEUzPjg/dCFswEujQZz49w5n+1gt27EfKs=;
        b=FLrOY+xZzm8r/SInSOxZ1MmMvFVxLtnNpkNlZSm8WsOpZoFYwzvEnZrAjEOQdbwzlI
         SZzcwdOXlIfN0b8ddYuvo7lK3Togno8zy52BcwM7IColROVLhWa6l6DM8LrlWVMzybl9
         XdaJ5+KCSUMxMz9eoR3uZotDiSF+G+XMB/ZWpV6lLgsmtVvnkdcSB/uGDYQa/4W+NV6o
         Zqy0zqU1Z+kWuSUIUNtwG4oFk8Edxtsot9uJXVzwya65QBvRtTbP3w1Kht7+3+GtJN/e
         vqOfHn4h20W4Gz3czNoFOf06a3F9HKLRT+gdkjm7FStFhADxjMcT5uJIvi2LL8lhnT9s
         PwrA==
X-Forwarded-Encrypted: i=2; AJvYcCXr2BUHHIVAeJVUzrhwC8kWRPH0XhbENi0li0X46OR+3o61bew6gBpHJ8Di3ferX4mmWB6XWvq6Fe+3a4kUX7vQ9Ec89mVrEhoD
X-Gm-Message-State: AOJu0Yy2SLLXyrgbI0J/OArFT4lkqP1Ynw6nTUrc03Dvrmt4dxPST+9u
	UsdX2wONXFm3Xhro3LcHU2euuL5QzsDQZXc6GM0vhl5GXHXO9QISVvAJF9x6f0M=
X-Google-Smtp-Source: AGHT+IFg9iQjL4OOe2gyK2q/bjZHToWe9JeQEoNzYDRhl9OQ3ztil9/6qyfZVyi/EtO3uJVZCyHXsg==
X-Received: by 2002:a05:6214:d68:b0:6b5:a4c6:4b3b with SMTP id 6a1803df08f44-6b77f625b55mr7196846d6.54.1721086149348;
        Mon, 15 Jul 2024 16:29:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:59ce:0:b0:6b5:deec:5eb with SMTP id 6a1803df08f44-6b74b42d37els80615876d6.2.-pod-prod-02-us;
 Mon, 15 Jul 2024 16:29:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW9BKWjXijF7EHaVHNnUtTlpeA8Fq45YxJPklvXdV6oC+z7xMWmQ7A82COufOT4V+Vch1aGYX5L+ZRo93a0PfQY1CIV+zDI9Gkh3BI2
X-Received: by 2002:ad4:5dc2:0:b0:6b4:f853:3855 with SMTP id 6a1803df08f44-6b77f52e844mr9548676d6.24.1721086147737;
        Mon, 15 Jul 2024 16:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721086147; cv=none;
        d=google.com; s=arc-20160816;
        b=RS/Ao8XLHXDICGsecQ/WvP5dcnEfkwpjUmn3LRfcmHSy2xxWsrkUGpajRaIFz5Arjp
         VxlMv48ULLK3S9MaL46Sa5KeHCNqeGhtqjYe/3ud119goH8frOSfev+zV8Yh+xqKxhpx
         0xMtxkWCtW1BBbbd6wRJ0rI+q7/0K7xwo21asq9FhYi6x3C3ndfQX2Y3cSqJFiFW+0UI
         o9qLJoEN6jx3BdHbxSR165LNY0TRtq1xop6caSlmNF0hhfQ4RKTZ70ND+WYBDWz3y7U5
         h8E2L0xSpsFcSsQqvwNADF6OU8NSZQcLfcm/hA6fiXaoPYHm3lGjokmp1LphpZUshyGQ
         X7ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to;
        bh=qo+dImYa9jU6FwAR5ClFdB8znDdxgTScr9fyWnukaDk=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=YUtP5oUlGfuIYge3wijx00vBg4dEWYabH7MMtkFUj39eVG3KYDQXSmRHVhP7dv/F4c
         AEZmZ3iNdtcJ0WYaFcwz5U7bnmAVitGO5HBQJ+ZxpItEU47NM7ImwDltIEKmzwROd/gK
         ljefJ5ipuVantG5XRPYtaMfwnAxSlBXSwdtraJKlXxpjiBpez5sTKfNWAUIT6n8kKBBE
         Q9/OalaOyKxS7/iLNbjC3K/dd+I4jhGJVNCVaMRuvqA2CvpSru+NINEn8LavagKRpLNo
         /VNYY5kcRELALAy6NUPHJOmYXSukWEp8LNRkzq09UrFowhMK9bnlg+jUsm2eR5oMuicz
         oeSw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a25d60si62468286d6.407.2024.07.15.16.29.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 16:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-520-72Iqt2NnPBaWbCUKzt_oiA-1; Mon,
 15 Jul 2024 19:29:06 -0400
X-MC-Unique: 72Iqt2NnPBaWbCUKzt_oiA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 81C1E1955D4F
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 23:29:05 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 723141955F66; Mon, 15 Jul 2024 23:29:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6FAF61955F65
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 23:29:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ED3D119560B3
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 23:29:04 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-186-8IRIWbWFNwiWgHausLFGMA-1; Mon,
 15 Jul 2024 19:28:57 -0400
X-MC-Unique: 8IRIWbWFNwiWgHausLFGMA-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 1e6a7618;
	Mon, 15 Jul 2024 23:28:56 +0000 (UTC)
Date: Mon, 15 Jul 2024 18:28:56 -0500
From: Tim Chase <blinux.list@thechases.com>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
Message-ID: <ZpWwuIvdyKoUqtoB@thechases.com>
Mail-Followup-To: Karen Lewellen <klewellen@shellworld.net>,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
 <ZpWWPBC3szmpqODv@thechases.com>
 <Pine.LNX.4.64.2407151750350.3550890@users.shellworld.net>
 <ZpWi5d1A4TkwT3n2@thechases.com>
 <Pine.LNX.4.64.2407151835130.3551659@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2407151835130.3551659@users.shellworld.net>
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

No worries.  You *can* just use

  $ dpkg --get-selections > all_packages.txt

for everything.  You'd just need to let the recipient know that
anything that doesn't have "install" for the status was likely a
package that was installed at one point but then uninstalled later.
Feel free to do that and explore the resulting "all_packages.txt"
file.  You'll find lines like

  npm      deinstall
  wget     install

By piping it through "awk" before sending it to the file, it filters
out the lines where that last column (the package status) is anything
other than "install" and then prints only the package's name of the
remaining lines (without the useless status info).

The results will have lots of system-type packages in it, but it
should at least let the recipient know what was installed on the
system.

However, if you send the whole file (or just the "install" lines),
someone with a Debian-based system can use that as input to
"dpkg --set-selections" to automatically mark them for install with:

  $ dpkg --set-selections < all_packages.txt

which can be handy.

-tim





On 2024-07-15 18:36, Karen Lewellen wrote:
> Tim,
> Sorry if I am being a moose feather, but I do not use Linux.
> as I am sharing the data, i. e. want it saved in a file, do I need the
> Install-print part of the command?
> 
> 
> 
> On Mon, 15 Jul 2024, Tim Chase wrote:
> 
> > $ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
> >
> >The "dpkg --get-selections" lists all of the packages, then the
> >"awk" portion filters it to those that are currently installed, and
> >prints the package-name.  The results can be dumped to the screen,
> >sent to a file (as above) or piped to "less" for review, whichever
> >you prefer.
> >
> >-tim
> >
> >On 2024-07-15 17:53, Karen Lewellen wrote:
> >>Hi Tim,
> >>the goal would indeed be currently installed packages, seems to be Debian,
> >>as dpkg seems to be here.
> >>may I have the command for  installed packages again?
> >>here it starts with dkg, and I want to be sure this is not a typo.
> >>
> >>
> >>
> >>On Mon, 15 Jul 2024, Tim Chase wrote:
> >>
> >>>>>If the server is running an RPM-based distribution, then rpm -qa, but it
> >>>>>will likely print out a list of thousands of packages
> >>>>
> >>>>Is there a way to copy output into a file?
> >>>
> >>>The usual Unix way:
> >>>
> >>>$ rpm -qa > list_of_packages.txt
> >>>
> >>>and you can then review "list_of_packages.txt" as you see fit.
> >>>
> >>>If it's a Debian-based system, you can use "dpkg" to obtain similar
> >>>info:
> >>>
> >>>$ dpkg --get-selections > list_of_packages.txt
> >>>
> >>>which will include all installed and installed-but-then-uninstalled
> >>>packages.  If you only want the currently-installed packages, you
> >>>can use
> >>>
> >>>$ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
> >>>
> >>>-tim
> >>>
> >>>
> >>>
> >>>
> >>>
> >>
> >
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

