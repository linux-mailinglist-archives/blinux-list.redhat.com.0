Return-Path: <blinux-list+bncBDYPVTOXSQEBBYHLWCXAMGQEUQ4UE4I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 256AF8541D2
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 04:39:14 +0100 (CET)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-dc64b659a9csf8763828276.3
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 19:39:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707881953; cv=pass;
        d=google.com; s=arc-20160816;
        b=o0rBZax1mpZneO40fciblegbUrcYinjGB266cqLfC1um8R7eYwFlsnYUyK0fdegS6B
         x88y3oI1Lakh3zRhe667rOlfp/LviWkqeBDzx72DPk/B6TFIBCS0+0M1XbWrG6WxHBc7
         qiO3bpxgbxidcBqAOPpe4HEVryTIA35KuGQcXHskM8EYScGCBFHccWpVqgzDJRWjTlZv
         R2qu23RB/PbWZNAZcmStSlU75oO19/UIvygXENSCdfczbUhqwGpC2umfhZbrE1Nys5GK
         kWk/R1T+1r1Sa1+9NJa+2/gDV6JIfJnuCAC3pGQvFLgEYQAvGhek3umdA3Hg6ZfsLrgG
         FBQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=RCkHbG9kHZU5yGLuzBlAsxmW2Tqqji8CYz+jCGtqpms=;
        fh=Duv1P5U0uQ5Fl/GXT3vmZ1pkDe6VIHANTzfc3MG41yM=;
        b=Em019AXIBp/ABRssPnyoy0e7/H+VBLbtRiCWCLoEMUIFgKWBeR1KWVsRG4mA5htVaq
         Xumpt+hAzMva+9MjryagBAyW0OCqoYa9n2IOQAUUI50Me8aVG8EUD9hR8X4ot67GLoym
         y4Opmx9KiN8lulHsYYL3XB4kJAEwsOZCzQpL787+0w37BgobeDchhFS6y21XzD4C77/1
         1vjj00Q/4JafL2DKy+kG4pMDgLS7JI8A2lMc64Edp6YwhV7ppP9LgciCa68oui5/BNH2
         1LilA/lrdfPu1/P0jQIkrXuT3SQ+eLdvfqCs5YAHEJ2/X0cF5R5Of98kdg9YWtc4aS9j
         22Hw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707881953; x=1708486753;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RCkHbG9kHZU5yGLuzBlAsxmW2Tqqji8CYz+jCGtqpms=;
        b=HILRbowim7oNheBChA+xf0Kn/04+s/U0hGbS3pvLJATwgNaKzFdwPQu7OiybYapOK1
         F0Gy0wzwqh56C02XpapRkDnUfoWwaMcVH70AbeXVOmoTZKltav33TOcd7y8sPc8YaM4g
         p94FqN9huB8h+OLCFT7VpRoFl8TnLQc/1DL5x6fm4XpZb1uTuS4FCFT/vwioYJ3m2PwW
         qT85zHSC2PVQf06V9aoJzVcL8n+pP28d+ulImp7D/tBUT+ddp35V+LPx6kQAaF2aNcDa
         HOUUJc4H2X+MdozBRfaFQDvDBQCM/+ZmM301bhrETvxpyYLw1Wg1Ytw/8ImliRYKY+Fx
         CqhA==
X-Forwarded-Encrypted: i=2; AJvYcCUK0loBNqIkwnP5xgzsVOeitCEGpcNgD1CRN2jjR0UdJTPgSOM8GB4K3MlvYzVeqVbF4gaGoapHWZfrzX4/7p3u7sL1rHSJaGS7
X-Gm-Message-State: AOJu0YyOfAV4rS4Oqe8Z682GWYHQmFg/UPCqRRJrzOP9wtpNqxHszfOV
	aD4akH8FiB2MSv5o+WnWeacPLq6dYxVRif5PQvhRYLR8mWwU9zCUpcXhSkNm19o=
X-Google-Smtp-Source: AGHT+IETps7L0Z5rm5GSMTHIMznBUvz+f4PJTC3nUmGaeLIKj21CwCHPV1YH/hUm57gyXKMa8CWm0w==
X-Received: by 2002:a25:74cc:0:b0:dcc:f5d4:8b43 with SMTP id p195-20020a2574cc000000b00dccf5d48b43mr1140380ybc.9.1707881952796;
        Tue, 13 Feb 2024 19:39:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:d658:0:b0:dcd:a08f:c83f with SMTP id n85-20020a25d658000000b00dcda08fc83fls525790ybg.1.-pod-prod-08-us;
 Tue, 13 Feb 2024 19:39:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXSrmI1WzIKewbGaz4iYbIjvIXtrcVLo0mgyfZXOuYT3AyTcwkjzKQ8zaR7ni/PHeu3Bv/e7WfG/4MmI3ySJvxjgxXLHC+vJFfIrgaT
X-Received: by 2002:a25:e08e:0:b0:dcc:7b05:4cbb with SMTP id x136-20020a25e08e000000b00dcc7b054cbbmr1125122ybg.31.1707881951710;
        Tue, 13 Feb 2024 19:39:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707881951; cv=none;
        d=google.com; s=arc-20160816;
        b=0lBZKKJnAlFomkU06Xn8PKInWpSLV3druROzf079bm6bV96nZfUl8XMVCW7AUmM1Xz
         JVxpBZrM+7rWTYwANd+03Z/FT2ynFshIkwU3GKh7e8TLR1DyM20W3WyKoWllyw0yfQvF
         hsloihkrSkQguUmjHHRBOsOV9rk3jMJuK/tmAdD4/JwxOHjcs6f3il1RvsVp50C0WZ7z
         199WEZdfBzU3RE88+b6+Q9yO4KFffADaDaTsHplROoNHCAv84E9TGgCxGLTjzsFRMe0O
         knSBpHGGWsnIh+xCDl/N+IIXoKhjmjWZoV7mg/QJPX1o466HxqxVattxJGhW/9SPhAJ8
         HzmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=d53P9RxkY9sRTM6d8cSCwEhooqMy7UkzOWEQtRdMnTQ=;
        fh=n/Vg7RuP9aiKG4BPyJUtFAaRJl8tyGjO0sBTJ24F9mk=;
        b=ugnhgdMneDlimouEJ5AOvDlb5Iu4bGbXLOUFIF1ej3OKJcTMg+Sw2dJCs0N2U3JQBG
         4h/NQ6t5+E/gbhdWl5sfGeRrj+1yIP8o9J2yXWsyqpw7zwVVSSp7Q7LWihSQLi8l6xzk
         rRL4GGRGMUZoGb3jgyObS/r2zrooDvaxHqwmhC/ih40aALBJTr0Gj/BCXxPKoB7pnBxT
         GNiQT0SFPgwqAKwM+h2nr7hiSHKT6AvW2+LcqKdHYvis6fSgF4s6bRyJ0yvrj1VWQSkh
         sGPrkE9/pYGw6posq01nwSNDR/MUPrSNZ5vM90zIY9tLdsmSrgc5r2UOwf/Oif3DFjzw
         pilA==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Forwarded-Encrypted: i=1; AJvYcCUZJBBFbGPxB8cKtApusD4z8BXezAO1d7OlVA4UKu1V8dFQSTHYDzIO1gjiuFGJpc2an6VA5U4Z9vYfmgaC7A8gmT/plbgExcOK4nTW
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id bp14-20020a05622a1b8e00b0042c68d52102si4934034qtb.334.2024.02.13.19.39.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 19:39:11 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-643-VXciO5XOOMGuhQMApKo06g-1; Tue,
 13 Feb 2024 22:39:10 -0500
X-MC-Unique: VXciO5XOOMGuhQMApKo06g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17F011C07F2F
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 03:39:10 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 14C521C06532; Wed, 14 Feb 2024 03:39:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D09EB1C05DB7
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 03:39:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DEB78493EB
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 03:39:09 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-156-fCbbUm61NwCq0LFitgJBEg-1; Tue,
 13 Feb 2024 22:39:07 -0500
X-MC-Unique: fCbbUm61NwCq0LFitgJBEg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TZP7Z6VmPzP2R;
	Tue, 13 Feb 2024 22:39:06 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TZP7Z6Mnyzcbc; Tue, 13 Feb 2024 22:39:06 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TZP7Z6MBSzcbC;
	Tue, 13 Feb 2024 22:39:06 -0500 (EST)
Date: Tue, 13 Feb 2024 22:39:06 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh command line question?
In-Reply-To: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
Message-ID: <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

First delete the outdated key since it won't work any longer, then login
again and a new key will be added for you by the external server.
ssh-keygen -r hostname
should get that first task done.
When you log in without a key you'll be asked if you want to trust the
system and your answer is yes.
That adds the new key and you're on your way.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 13 Feb 2024, Karen Lewellen wrote:

> Hi all,
> Will aim to keep this simple.
> is there an option with ssh from the command line that allows you to update
> new keys for the known host list?
> I ssh into my dreamhost office workspace from shellworld, as in
> ssh email@email.thingy.
> I provide the password, reaching the dreamhost shell structure for the domains
> they host  on behalf of my employer.
> dreamhost moved our services to a new server, changing our ip address, not an
> issue, but also changing the fingertip keys <hope that is the correct term,
> previously saved  for my access from shellworld..who seems to use a strict
> matching process of some kind.
> My hope? is that there is an option that tells ssh to update the identifiers
> used for known hosts?
>
> Thanks,
> Kare
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

