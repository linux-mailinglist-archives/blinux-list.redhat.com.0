Return-Path: <blinux-list+bncBDYPVTOXSQEBBXPJ5SZQMGQE5PJRY3Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 787A9917346
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jun 2024 23:21:35 +0200 (CEST)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-e02bb412435sf12771882276.1
        for <lists+blinux-list@lfdr.de>; Tue, 25 Jun 2024 14:21:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719350494; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRHvUlYpiNt+GUQodYqcqUuDIFwjFOH/mK9WzSaWcdxDFJWyaLLKOoqq/mIlHh74hB
         i6Xg8si9Fmppyvo9GSEHxQ5fxfh5K9KclKhUe4q9XbUD7uXECi1WXgJejHHQFTo/uoyH
         2pQSBr4qD+Nt+0wX/uVikzgzylQ9vLugB3BRH06wZBAltbcRO//vjpv/GBJUz+5PbW+Y
         XNuCgfIOxoPVIk/V8AXq5ONjzwC656MpEmU+JFFQ5gWEhsLU4SEU+ljtscYiTjxx+pwv
         ulZa1tQnlR+32JUlm1CQx2bZOUIheX/NmGlwrFbV2jsyMCSh2km5uRyfcYAsNHs5dTpy
         Mm6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to;
        bh=ZT+6nC7Mc8360MO4RAUMGua+NHK5hcquA+nhxWyI70o=;
        fh=JNRczlV5Dkg8dMw+3Rh2jDNtMpvUIPCCOXyPXwokXKs=;
        b=fNsDwo+0sVYZqAjO6wrIscymf9gOZoCmGffqFMgwMrSS04ycMZb54J5GeeDsjUQjis
         /iaATTSSvB8EJcul73UmI6P1VTiQLhejZYC4vbg7kBXcWQoyD243nqUvGfMuRAAnhE2u
         B264p/ZMjXVP1YWSOseySxGIqSa8Rz//qfyZ196Kiseu69I+bV9YKsXprwNodiGbqt85
         +fvjsA5IPud1MMpD6uyVIhHWRo1w24N/WrYHG+cvi/Kn3bKjn3dRLkLCfS312CVbxEy1
         MUzIaxWZK0SiYRCACCJqXxgIMRzuIUA1uNhPrKxeMQhynPM9Lg2+WDb0R3MVTz5haB9D
         r3nQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719350494; x=1719955294;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZT+6nC7Mc8360MO4RAUMGua+NHK5hcquA+nhxWyI70o=;
        b=KHl04Uiv4kvtws6Gp/qjznL3VvdHMXceqVQOtGnTxoMVUc7Ewl5I5+h5HMprSLHjIt
         uT+99fmMaG3fvPu0IGz3vRjHyVZinkK6MTjFhsp3lz47ZscDFA+2NUURLuAu+UZB3El2
         NPV7P2bmR6HxM1ss4Zf9ZeX1ZJjzH4pD0tgfHYKGlMsAaRvQtj5q8jk/cOkXxJnf9UFO
         IS1l/qdS20J3/DRUPf+MHWj4jQGyK5bhS/3SomstlqY8L8PCDU8z3xYjCT/N/il/04xi
         0pTW6wV57rQaUTsfhrz68yXSafRW7Y0z3jkW+NR+tCxhSSfz1z4wfJIGRKcaStVL0N/Q
         omTQ==
X-Forwarded-Encrypted: i=2; AJvYcCXSX+Q+PWuppuu8mjjvNeqsOs6AmKrLbKFle1H0BZHYn6BXPWawW/OliwmZUt/KLQxyThVsY1JQm1M4ecJBBt7Vsy6ci5QS77CJ
X-Gm-Message-State: AOJu0YyzxbTi2sVZsZrWGz9Z30l6CCmUcxzWlY1yy8SLTJHyPTdMnMuQ
	VC2pr0HQe4BK8P1US1xo7NmS/G85KM3OWZC+fQ84O2NZkgfoiemkCEB/Y0gcM1Q=
X-Google-Smtp-Source: AGHT+IFomgGk7DJtv6oegKzAJ0oHc4QJBKd5bA9cL3ZMsRJ7TyrKqZuKg7KAdh3TCuf2q0F2Tjj95g==
X-Received: by 2002:a25:2e4b:0:b0:dff:d79:cbb9 with SMTP id 3f1490d57ef6-e0303ff4702mr7146508276.63.1719350493954;
        Tue, 25 Jun 2024 14:21:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:100b:b0:dff:3c7f:ea92 with SMTP id
 3f1490d57ef6-e02d0a952b7ls8585156276.0.-pod-prod-09-us; Tue, 25 Jun 2024
 14:21:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV8s0CuhNgG4GpZEoGz68m96REV2mKZD7bJHGA4zRvLt5tdaa0pmvuQFPd4GJfn8j2QAxhe/hkUInF/GF+rYMfbuTTWKvYo3bV/eu7c
X-Received: by 2002:a81:92cb:0:b0:63b:a64a:3bda with SMTP id 00721157ae682-643aa2bb407mr80619697b3.1.1719350492837;
        Tue, 25 Jun 2024 14:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719350492; cv=none;
        d=google.com; s=arc-20160816;
        b=gAwXQVhy0ZXWOKsxSbJBEb2n8WnoxlCxb+LRhu81TiyYBRcql69yRE4mPwf/AYBOSB
         DK7DRjq338c1mMuimRfegc6I5+uFXadmw6CI9wC+uwAsAqgmnr6BNt8itLrngjx4D5RH
         s51f1bSetk3jTXzy15BjVWH+4Ukay4kWbd/PYY4yczulODA2lSHQWqCiP6BiBQSgH5z5
         aTfoKdDqUFhSfbL2oGNmSkefs1YxaWNdmS7yFSadHPzl3dUkvyUm+xLvSQvNUyoYgy/a
         M8wk0biOpkvt8g/k8GAF5RcqF2A9p60Y7DoWRVSU3lWs0hjpuC7587yl0EvHFQ4hU3y8
         4moQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=MddpOTmU8DU+SlcKW4OTt2Dtrtkvz6ATBahR/62r9k4=;
        fh=4BcCzBZVEzBBoPkmT+Kn0NSYGJktUwFMiV2WAVIZ3Vk=;
        b=A2Ajju1w3EiVpIJLoW2sFxOW78y0xECkcBuWNR3HZNOmsQS8Yv3RHhMh3dOliMW3jU
         bX/ykx6EvyE6Dcyf7rfgmMGw/TMdTXP68yNuiCGS6NZiTb10oyhu1tKy0n8pro21E8C5
         1LvADwcGrc4evsEfRRP/Ia7Yn0istlU8+c5cLGIj/ulXHvm1D7wqQWGDY35rVOC76hoo
         /mucdCYDc38lAYpctQlema/KPDI+Wo11FR8wL26m6Hzq73ZY7Q+vKxd18nx+XGQD2t9i
         R6KjEsTQDOnpMwvMDZ590X8Vng+z8VreTV7UWQsT/q3JvAruBGGWbUI80aAL6aETOdiL
         0fcw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b51edbb7fbsi116220956d6.240.2024.06.25.14.21.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-495-ZA2UJX12Ol24aLN_65MzVg-1; Tue,
 25 Jun 2024 17:21:31 -0400
X-MC-Unique: ZA2UJX12Ol24aLN_65MzVg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9C4891956053
	for <blinux-list@gapps.redhat.com>; Tue, 25 Jun 2024 21:21:30 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8CCEF1955D8D; Tue, 25 Jun 2024 21:21:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 88A781955E75
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 21:21:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8D6FF19560BA
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 21:21:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-201-Zj3pwdhHOH2fbt6rqBny4g-1; Tue,
 25 Jun 2024 17:13:56 -0400
X-MC-Unique: Zj3pwdhHOH2fbt6rqBny4g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W7yHm3vLHzF6Q;
	Tue, 25 Jun 2024 17:13:56 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W7yHm3jXpzcbc; Tue, 25 Jun 2024 17:13:56 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W7yHm3fN8zcbV;
	Tue, 25 Jun 2024 17:13:56 -0400 (EDT)
Date: Tue, 25 Jun 2024 17:13:56 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: matthew dyer <ilovecountrymusic483@gmail.com>
cc: Blind Linux <blinux-list@redhat.com>
Subject: Re: archlinux installation
In-Reply-To: <8043012E-2C94-4583-A064-2B0B189C9046@gmail.com>
Message-ID: <0f8e40b8-6957-38a9-db1e-d96b7395910f@panix.com>
References: <fb8e580f-7545-54ca-58fc-e4f5d1b7b43d@panix.com> <8043012E-2C94-4583-A064-2B0B189C9046@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

I only install the sound server if it comes in as a dependency for other
software I'm installing.
I don't know why both of them kill espeakup on an initial install either.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 25 Jun 2024, matthew dyer wrote:

> So if you install without a sound server, do you just install the sound s=
erver after the system is installed?  Just wondered this should be clearly =
stated.  Thanks.
>
>
>
> > On Jun 24, 2024, at 10:09=E2=80=AFPM, Jude DaShiell <jdashiel@panix.com=
> wrote:
> >
> > If using archinstall, hit the gray star key once to turn highlight
> > tracking on before starting up archinstall.  When you get down to the
> > choice offering a sound server, don't do it since whether you install
> > pipewire or pulseaudio both sound servers give you a silent reboot with=
out
> > espeakup running or if espeakup is running it's running very quietly no
> > matter what volume you have set on those speakers.
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to blinux-list+unsubscribe@redhat.com.
> >
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

