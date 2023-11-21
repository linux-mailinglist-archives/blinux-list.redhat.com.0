Return-Path: <blinux-list+bncBDYPVTOXSQEBBCOG6OVAMGQE73ZFXLY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 689657F3474
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 18:04:10 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-66d120c28afsf45145436d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 09:04:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700586249; cv=pass;
        d=google.com; s=arc-20160816;
        b=qnpiKLw4qwpeR2OrFWHJsyinsQ8jiAJWfGWmnbDkbQGvTHmn8IeexiWpw6XdK0imdD
         760hLfqjif5lCCqmAtwPu+b2LSpmtnS2nEGuGomin02Xpzen7iyT/68VQbXDrVl/H88p
         k1YEhZUUd/p+z2xJkC8tcha0BVfn15z1a4c/DAh5NlO3XCJ5TeD8nIvdf4rdLhdyvyRg
         8OwNOhxdVIoj9AGrVnX31q+oSyGce2g5lVSE2vBiFbUt6AGLqTYcKMt5xtaYVa055xyP
         PqL5eQQO4mcjKFHLVLE6shhPXB3U0iVIDnyT/DnLVIDbO5Da1Qm4mUQxbUrCLuEIY9Ss
         7Ytg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=DbMINh7VWCOUu3NsTzRfVb3p+0AFigUBOevTN0yv4uQ=;
        fh=ItoZiVoGOgHIaihewIX1o68hJJ2YfjB5fNNcAvNip8A=;
        b=o3/G1UXUr9vj2Z/7dK2FDz87xM6xJKfLdcQIwpUu2VKscH44WZGdqfKXrdH7fND9tE
         lR1Rl8yvtfMo2X/ENfYT6w0DIBRhHh1MDiFR6d+pzJHe6zrzvquHI0Q8KgcbIGMWBK2j
         pvJZm3vTYUaaWQidslHsEJsdH6VzxAhOQV5Q4lLNuwSX5znDm6PFTomB9a71XGeWJO8X
         m4eTYzMurqx3TCXF9MrkeQ7n1uyYrMU31XdDJZeFa4hRmuJjLespQHzQanRLG2fByU3r
         02s2C3ao3Yf/Q6Zj5QnzfN9sxexxB3XW0aA0eGuFXdT4hpGDpIzFRL7q9hBRYDpJviPa
         GyPg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700586249; x=1701191049;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DbMINh7VWCOUu3NsTzRfVb3p+0AFigUBOevTN0yv4uQ=;
        b=Zc8q5dRZrOPInEabtHE0Tu2m0c+DrN5ex3/lIdo3PuaZ63fbjDN51J3fpB3G8Eanif
         o+usMi9tNYyqAjzO6MgBNiwIJmDrf/htmMTUn0f0CQWsevRPdTkIwQhd4HYYQ5PxF0so
         F7DKpmIAMkElQzke6mZXb8IRSAqspkw4b1kuBkjw1Qv2R3fyHX8Fa560bi7uclj0TnI8
         fLRwvQLgdu9VXa9xs/ydBhLDB8hg1JzNcJF0uXaL3vpVmgIdhwyuCyxxHHorTBoqgFnu
         hd+1725uuUzw3ghGsEEZFjfd+K26gos3lsQBSEAJ9zcOrGKXIilHYeuJxp9RpeECky9z
         7cxg==
X-Gm-Message-State: AOJu0YxVEy3e8LtjnCRBazu4W+SLjWz0N6PqWGqI/gM9dur636VbnQ/T
	NqtVyESRady/aiw8DarSjSZTWA==
X-Google-Smtp-Source: AGHT+IFBhkVXIhGEYxBIPBp3ot2xnCCefG3NrZQsVTlaRSJ2Su/tbcvdCV8idNDXat3Oj9ZyoP2Oig==
X-Received: by 2002:a0c:e292:0:b0:679:d3f8:7ffd with SMTP id r18-20020a0ce292000000b00679d3f87ffdmr7929585qvl.0.1700586249366;
        Tue, 21 Nov 2023 09:04:09 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4188:0:b0:65b:2cc9:5f15 with SMTP id e8-20020ad44188000000b0065b2cc95f15ls3089717qvp.1.-pod-prod-07-us;
 Tue, 21 Nov 2023 09:04:08 -0800 (PST)
X-Received: by 2002:a05:6214:20a4:b0:675:815b:4a01 with SMTP id 4-20020a05621420a400b00675815b4a01mr12744216qvd.50.1700586248605;
        Tue, 21 Nov 2023 09:04:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700586248; cv=none;
        d=google.com; s=arc-20160816;
        b=O0YRevvHKamWXHGnSDG/3At0yuy969mzDPEBgOC7Ky+BAKr6kknLIbXsXbPDTCcMAp
         nWbz0yLksy/g9f1yZBHberbrcI4nEVYmeb875fMQXbYkcJtXkFsQgiKbl4uWLUyg4FKv
         UFT411drw0C2shDiHb0P3gnxpEqp6GgpyTk9N9fKHPgIGemTlgmxp/+EU6DVy6I2wC0+
         qNzr263owISyLKCRsxsA+PdzwGPGf/CvUhhW63TU5P8py3HDtdc62GTbmE2auCl7jkLb
         KtDXe83bm7MD07rWUIeIWDZ2t+AiE1N7R52NvJlrV82yPjkyeQhCJD0klFecKt8OgVtY
         yVUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=vCJhb7rCYXACLXmrShhi20hzjkNZ2kyyBvzEZmB5zSI=;
        fh=ItoZiVoGOgHIaihewIX1o68hJJ2YfjB5fNNcAvNip8A=;
        b=geSb2aOI6iIMJimLDKbu1hYRvLTFRhdRpJkungxiuRg3fz5gEIu+EkgiwzlEQlpmil
         lNLA06DLGRUUGWajMj7QqpmfgZkb9j5f63dZ76ByJU2J2Jq/3jGNQSYxNopNlKk25Sei
         JbxZU2w8dJBb36iy67Dkit+DAWb4Ao/FkAgNhO406ZzEdf1d3oUeXR9sBZrYr/mM9/q6
         p05X6kcS8Z44W5+/gRTpK4AAkpqwc5efO8yXiYJ4xVTIkOky2RSknUDyR8yVddzZ3tsO
         1KPmBkK88aXe3bVpMAgcnzT1c/vseTAVF6Ez0zkOwT0rxcVXEnJK36FOmnCGIH40eAHi
         V67g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o5-20020ad45c85000000b00678043fa57dsi7817572qvh.423.2023.11.21.09.04.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 09:04:08 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-114-BKCUVBfGPTuHWu2w7QZX5Q-1; Tue,
 21 Nov 2023 12:04:07 -0500
X-MC-Unique: BKCUVBfGPTuHWu2w7QZX5Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B61C28EA6F5
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 17:04:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 17CD92166B27; Tue, 21 Nov 2023 17:04:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 103E22166B26
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 17:04:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5C93887E46
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 17:04:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-553-o5bCO4B2PQG5hudDTojsUQ-1; Tue,
 21 Nov 2023 12:04:05 -0500
X-MC-Unique: o5bCO4B2PQG5hudDTojsUQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SZW1c6rJ6z13Vt;
	Tue, 21 Nov 2023 12:04:04 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SZW1c5Rh9zcbc; Tue, 21 Nov 2023 12:04:04 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SZW1c5KP8zcbC;
	Tue, 21 Nov 2023 12:04:04 -0500 (EST)
Date: Tue, 21 Nov 2023 12:04:04 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Chime Hart <chime@hubert-humphrey.com>, 
    Harley Richardson <destructatron2018@gmail.com>, blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <Pine.LNX.4.64.2311211149300.3575549@users.shellworld.net>
Message-ID: <8b00d7e8-f6ae-7252-7ff9-e896f65a575e@panix.com>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net> <20231121000352.GW23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net> <20231121024247.GX23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com> <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net> <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com> <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net> <e4c20f48-32f9-751a-34a1-3426e6e01d2d@hubert-humphrey.com>
 <Pine.LNX.4.64.2311211101130.3574401@users.shellworld.net> <981c24e6-d364-83de-17f0-c6ca7c588623@panix.com> <Pine.LNX.4.64.2311211149300.3575549@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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

I'm not going to speculate.  I have never been a project manager so am not
qualified to speculate.  One person I know was a project manager and he
could do it but he isn't on this list.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Tue, 21 Nov 2023, Karen Lewellen wrote:

> okay then, lets speculate.
> How much would it cost?
> Kare
>
>
>
> On Tue, 21 Nov 2023, Jude DaShiell wrote:
>
> > People with the money haven't put it out for a browser like that and won't
> > put the money out for a browser like that.  That's why it hasn't and won't
> > happen.  Putting a browser together like that would need a development
> > team and not only for the interface there's security considerations
> > requirements and patching that will have to happen into the future for any
> > such project.  That needs dollars or some other currency to attract and
> > pay development team and give them enough money that this new project
> > remains their only project for long enough to get the project to first
> > release.
> >
> >
> > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > order." Ed Howdershelt 1940.
> >
> > On Tue, 21 Nov 2023, Karen Lewellen wrote:
> >
> >> Chime,
> >> And that is something I do not personally understand.
> >> freedos and djppp, both editions of DOS still under development are not
> >> kept
> >> there by individuals using adaptive technology.
> >> Instead, they are there because many people want choice.
> >> Elinks when compiled with the options, provides a blending of the graphical
> >> and the text. paypal is treating it as my default device for one of my
> >> accounts, no more captcha.
> >> Links can create the best of both worlds as well.
> >> So why is there not a port of Thunderbird or another email tool that blends
> >> the best too?
> >> Creates enough of a progressive enhancement factor i. e. basic html, then
> >> builds upon that for interfacing? That helps mobile users who are not all
> >> able
> >> to get apple or are unhappy with android items.
> >> Kare
> >>
> >>
> >>
> >> On Tue, 21 Nov 2023, Chime Hart wrote:
> >>
> >>> Well Karen-and-All, I think there are no non-graphical ThunderBird
> >>> applications, so I wouldn't think that would be an option for those of us
> >>> in
> >>> a straight commandline shell.
> >>> Chime
> >>>
> >>>
> >>
> >>
> >
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

