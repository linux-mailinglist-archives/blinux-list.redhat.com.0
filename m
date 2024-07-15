Return-Path: <blinux-list+bncBCD3RKH4ZIBBBSMF222AMGQEFZI24PY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id B6244931BA0
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 22:12:58 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b5f61c0cc1sf66704546d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 13:12:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721074377; cv=pass;
        d=google.com; s=arc-20160816;
        b=DcFZCn9T8Wxg1Z/K7UudsDq44G7NrWnJJ3TjixDhO/XF5nPBH6Un+gE04NGpL6zQ/X
         Gl/zO38XeeMmvtaqDOUju3b4n928xBq54rQ8vCimdzJA5laXzRARaCfzLgnFhGvSN+Ad
         3yV8+YR7/rJUqXw26a1qrnaYxmKtaDqZ1b+xyknSSvAwd/gm/6irNg/mzXMqsTQJ9xZ5
         ushYMZQLWhwityRJU4v+CuuL2Wf+mD/QKDF5gWLrl1jhlqJW5580jOPYBzJAWx6wcF0j
         I+JEy/c8/CbebdKZq1x5wBHtLy55cLPTHYhUp0GxEEJ9A44ucfhSRjSJO/5yLjoLYRCA
         Ancg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=4RRKLreRoGkcZPB+4nGnDo0FVapzBtxX3Xc5imr4YwA=;
        fh=W2vbSS0fNqQxaez7rCO1uHxZN+QVPetKMoc7GhWDXzM=;
        b=a3mSc0kQaM/WuLkaFCDaxTV4nBe7N2W9o4MvpwyYeKPJbX9cvU/Y+c7VAjvSIiaoba
         brzvcf3EC9ovUhsWM3haHNT0Sp6+3iVCbQ19MER/W6CipvSol7UyfTy9r5blM85I2vHD
         1LhjphhwqIcOHpFL5tYzg5BHl8q6O9ZVDzpejMpSZcoDGyH7pZfnFPdYu4eH8JpbjFXC
         d5NOY2lLkQ2/92f/cM9cb5U3k5X/+bDnal0BwciX14cfkwYf3N3H5abg7+MimhEKbB4U
         w7t2Aps6s07m1heMtvGgXPf2RXgCuHaxnZqCo0+BHEy6mZIg9517JwtSxIB3Oe0bNbu7
         YPgg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721074377; x=1721679177;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RRKLreRoGkcZPB+4nGnDo0FVapzBtxX3Xc5imr4YwA=;
        b=HM5/Zrlhif61G7ejVig8NoRKvXWnnttACqC+UDTUuJ5Ov2VKg/p5ZuIIenWcOqJuZ4
         6QAix870BWhBpoYc2IlyZTWObIYLIGyNL07EpIEtKI8Uvwl8o9rqCSCWrH/e/vmn5nLL
         ThqYcehI2keQ5/Kuujb/Lhs5u0Lg/XI9zecwhTKdJRlLYphxkKfZ2C/lYwp0eZH5Bijb
         35lTs3YgyVgC1MEDln8zGZDbIi2LYVNuFVhsCGEeLQaAuze3O41IXid3NZTHXPhqQ7WN
         M47+Q/Vh+Geu9LsJCSuOm3gf5XKlkjxdMe+05N+8AP/RTzCSKPOEhZT0NZbEJcOl/dK4
         /5rg==
X-Forwarded-Encrypted: i=2; AJvYcCXEfQJLEIIoEhaxl4qaRJIIG9aUk56cA7Xpb4BFVrtVy3tApZ2vM/zNiC08MNpV+hqbzRT39XZaEwv+KeOXH7PnZK+mrCxN16oL
X-Gm-Message-State: AOJu0YxpBFoi2k/tZnunp0jrjLm/QIwXPUHtbSR8jMxsPmAvSuUMZv5K
	SHzIaRmnOI2xp/p90MiXihFVGECj3bP4m4e5wxYGkFf/7Ri/TS+lFwIe/Jfkg5c=
X-Google-Smtp-Source: AGHT+IF2jLGJ+XLF/Q0wcmWQLpXHEJ9RhJogx89nbbz8ssvzSNReCCyU/3DYhqaT3TsGri6LnD1Msw==
X-Received: by 2002:a05:6214:212b:b0:6b5:e139:ca5a with SMTP id 6a1803df08f44-6b77f5593e5mr4490296d6.38.1721074377333;
        Mon, 15 Jul 2024 13:12:57 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5fc7:0:b0:6b2:a690:c804 with SMTP id 6a1803df08f44-6b74b42751bls115522796d6.1.-pod-prod-07-us;
 Mon, 15 Jul 2024 13:12:56 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXNInWGkorUkevMMTFT17ckEdwZztEpPs858wRa5SugEI1XkmQxR9X0oSMc3pPJ7Yn1Cij35jKHfw5AWPvArj/35vD14fmu3cOJZs+m
X-Received: by 2002:a05:620a:172b:b0:79f:88f:6989 with SMTP id af79cd13be357-7a17b6cdc13mr13612185a.20.1721074376554;
        Mon, 15 Jul 2024 13:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721074376; cv=none;
        d=google.com; s=arc-20160816;
        b=HBwxouYf0Eudv2UOCCnUAak1jmhAD1aPJC8br7rXVMMAhrU6v11gySv5JK00zB1ocf
         lMqqkdeJKAA8shHRAOWGtM/NiEFmjis+46YVNQMe9l4eyP+jw377xYzPuAYYW/3qiE9f
         ElK1vWyNq3OYeuPF11uGTeGABy/r6/umBBohKvWRJ9Kr5p/yq29SvopydRPhsUffnQnD
         OGSbqoWayeriV6lyLlSs2LJgS+KNtRxhhu4BrKyVzI4XYarI1BBlhbnzZpX0rXTjYEGe
         18EBGVQyntss3pRQcmHa76Ml3ZWpS1L3vgXSHWYL1HlP1FhUraqjGd9oBpuCUo/Ykc+9
         Eulw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=feUWVQ6Ri2UXS7woQuRZGXfurP8YLVIzCCwFHB7z2nU=;
        fh=vhDXMG3g2mtRkRLmPWaiV57FS2pxllGjzClSNsTbCCo=;
        b=Hq5JS7SsT4phvjaTmuU/M4Lmpp0qko6Ep1L7+zkvhsml7XBe/CD+EFQ6Rpi+P6Rtr2
         3iHpy01msKRxV68EEU29fWFHFsCsB+V4i534foQJeY1imEDGNO3xuLlnwivHUMOCefJC
         p1ciYFsH59gXh5q6nHdcS1F7X/AE9kkmkTzYoxyz8nFSG2zR9bRS5/n9PlxjgjANGYFt
         wz6kB51S0AkFW2uvhJGkF8jlZo0WxA/XCwpnqzpSMzZwzBpR93J3gI32c5p1q+1JP8XR
         JqWaIpS9SHAvwehiAacIZYok2LRjD5O0y581YKOZKEOSQa4sfpCVWhp89Cg2WugPN3Ng
         dCOw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a160bac39dsi592855985a.216.2024.07.15.13.12.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 13:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.167.53 as permitted sender) client-ip=209.85.167.53;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-371-Rb2dYBauM5-7UcYa1kbU_w-1; Mon,
 15 Jul 2024 16:12:54 -0400
X-MC-Unique: Rb2dYBauM5-7UcYa1kbU_w-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E465D19560A2
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 20:12:53 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D4B361955D44; Mon, 15 Jul 2024 20:12:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D18AE1955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 20:12:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 32D271955D4A
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 20:12:53 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-272-vxlYkskDPdqCs_qQTVpl5A-1; Mon, 15 Jul 2024 16:12:50 -0400
X-MC-Unique: vxlYkskDPdqCs_qQTVpl5A-1
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52ea929ea56so8753052e87.0
        for <blinux-list@redhat.com>; Mon, 15 Jul 2024 13:12:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUsVDcYOAcTvO75KE1F6t/9GxDjqI+Rr0IJIua5+LVLQ23y5IB9v7GICDjsGyXAAbMVMOqZyMplLdlRFbc4PUXyGTqKMbod
X-Received: by 2002:a05:6512:3b83:b0:52c:df74:1577 with SMTP id
 2adb3069b0e04-52edf02dcf8mr4670e87.45.1721074368551; Mon, 15 Jul 2024
 13:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net> <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
In-Reply-To: <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Mon, 15 Jul 2024 20:14:09 +0000
Message-ID: <CAO2sX31YniY7eR99NOdqakCfZO9+Q_=hwCDFS-g+UbbO_yk48A@mail.gmail.com>
Subject: Re: how many Linux machines do you run?
To: Mike Gorse <mike@straddlethebox.org>
Cc: Karen Lewellen <klewellen@shellworld.net>, 
	Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="0000000000005ea5a2061d4eda8d"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--0000000000005ea5a2061d4eda8d
Content-Type: text/plain; charset="UTF-8"

You can also try double tabbing at a blank command prompt to get the option
to list all available commands.

Or, if you want to break it into chunks, type one letter then tab until the
shell either lists all commands starting with that letter, prompts to
display such a list(if there is a lot of them), or tab completes the name
of hte command because it's the only command starting with that letter.

Though, on my system, it only offers to list 700-some commands.

Though, it's worth noting packages doesn't equal commands as some packages
provide several commands that do related things, some libs might not have
any stand-alone commands associated with them, some data packages contain
no code whatsoever, and so commands are just symlinks to other binaries.

Also, if you're on a system that uses dpkg and apt, Aptitude provides a
ncurses interface to view all packages currently installed on your system
and available from your configured apt repositories and puts information on
each package right at your finger tips. it does sort packages by categories
and license status though, so perhaps not the best option if you just want
a master alphabetized list.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--0000000000005ea5a2061d4eda8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can also try double tabbing at a blank command pr=
ompt to get the option to list all available commands.</div><div><br></div>=
<div>Or, if you want to break it into chunks, type one letter then tab unti=
l the shell either lists all commands starting with that letter, prompts to=
 display such a list(if there is a lot of them), or tab completes the name =
of hte command because it&#39;s the only command starting with that letter.=
</div><div><br></div><div>Though, on my system, it only offers to list 700-=
some commands.</div><div><br></div><div>Though, it&#39;s worth noting packa=
ges doesn&#39;t equal commands as some packages provide several commands th=
at do related things, some libs might not have any stand-alone commands ass=
ociated with them, some data packages contain no code whatsoever, and so co=
mmands are just symlinks to other binaries.</div><div><br></div><div>Also, =
if you&#39;re on a system that uses dpkg and apt, Aptitude provides a ncurs=
es interface to view all packages currently installed on your system and av=
ailable from your configured apt repositories and puts information on each =
package right at your finger tips. it does sort packages by categories and =
license status though, so perhaps not the best option if you just want a ma=
ster alphabetized list.<br></div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--0000000000005ea5a2061d4eda8d--

