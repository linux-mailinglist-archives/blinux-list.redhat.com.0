Return-Path: <blinux-list+bncBDYPVTOXSQEBBIFERWYAMGQEHNW772A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 5319D88D1FF
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:54:26 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-430a6fe58bfsf76113411cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:54:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711493665; cv=pass;
        d=google.com; s=arc-20160816;
        b=jRxCr6WKrdfYaaCVxvqooiFSDBtjRwK5rEdpQGbLdRVozCs8au9WQZRM4M97yhPMHG
         oaaXFo9If5rnEr/qLtZq/BTrGI6MAEC89eSoIItPDC+VY9OaBBqYEnarXjIeraAT3pMM
         ud+hVyMMYXNi3H4RcyeqMaZN1pgi0LnnX1E5kZ+iTv5w/2EwywJiLGtMtrFz1S2qM4ba
         HtCZ2Z2RL0lrwR/P0QEts+R/pMm4woB7gXFhaAN/h5NdhxqA4jpmyMzMEqGUtwm1cT2W
         QuQH5JKpHmIAPUunwuA1jImFayV1xDtXIGS5ezBZSysh6u9proruCYsZGS3L+28jtEwn
         AMHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to;
        bh=DBBBH6kc/clyNmXhfFbI9u5M7YoAHLfUjlR88kfsMpA=;
        fh=xs4nf4l6GFdMD2IgHSVbRa7vZauG8Y+4t+NkPJJsySU=;
        b=rcgyTEaLDyMSdGXkmgTYFLkxmVDO5Vsi2xQWqn/TT8ovdwQcu7SirZ5XGM/Luo3QWu
         wh2PS4zHwGZFJvzd+I/x9ZjAO6NhffwpOxCz+bfczGlbPTjO6WDruW0Nym7QXclKfl5h
         JhNap0V5MVXS0Cai8eM4EzHnZtiVMSpnzFXqvQobd9Q8eBKXFOemGvcNtC7LlASZfR6a
         AieTHnGI56g0zxAKXH82AIrUoQur0IoFyS7sbaA01L4HNpBJ64v2ewoaFoW21hqibIde
         6xGy/QXRwJYjWI34N+J/cf3KwaCr5/a0StXaYkAfAJAPuzMuAIpGUW7mPu37/nKoH91m
         Pgrg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711493665; x=1712098465;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DBBBH6kc/clyNmXhfFbI9u5M7YoAHLfUjlR88kfsMpA=;
        b=HB9Bny3quvDzDQ8SGYBHxOnDUpsOgS5ubLEPyeVs0fnC3iF5/9hZUAIA4BiQzDseaI
         9NOjPqbLOSFjk7968HWgpAlSZr4r0KX3MyjQXB8ChBx9TJj1aU22kCuR5TssK32NZ7v6
         vxfRqH0+BB3T6shWo2EgDmOcLf5S+Ci2iMb4dGi+TW7F76L6Nmkgb6l+XgkAnjP9ibU4
         rGgPtpX+BhGOlisLS5GorQBf4HED1Zp3I1kwHbc64i+AZtoAXPGx4cMnHbdoM9I4xpqy
         gWvChrue7xzTzT/KQ6EplIEku6AXE6VIzk51Cu9z106KGF5dHsMVpbPR4OoXKfV9jrwA
         i+YQ==
X-Forwarded-Encrypted: i=2; AJvYcCUoHvkJgWTqkaqTG5lUAqAcT1qf5VMNTngaQscN6HAjuz1FPVf8frQVTeWe46Aa5WAqoYJoax3MlvlNEdQ7LiRZiAmYuTWT6v55
X-Gm-Message-State: AOJu0Yz9CjzZlmEF7XdLexSUT9dDOSpLA6AN6yeAdJ7dOqyXuP7+dF/0
	xj5FRpDtOLYZI0orUYc3isOCMsxyDfpfuhxitSjyYsQjv7fEhH3J8pbgox4L9Us=
X-Google-Smtp-Source: AGHT+IEWMMWO/S8Qgsoz83MbVoftlVaqdmAklAbThKihY7EycBCAf3ItfO4VrI+HOVIihYbddu+f2Q==
X-Received: by 2002:a05:622a:8c:b0:42e:fd4d:7f07 with SMTP id o12-20020a05622a008c00b0042efd4d7f07mr1125544qtw.28.1711493665080;
        Tue, 26 Mar 2024 15:54:25 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2ca:b0:431:5f09:9515 with SMTP id
 a10-20020a05622a02ca00b004315f099515ls3480193qtx.1.-pod-prod-05-us; Tue, 26
 Mar 2024 15:54:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWb6J32oPlYsOtopxrzt/TFVWt4ijwYCVqMkbl5BfGW3zkiiNvrh3Yh+s+KPBQGCwvFZZ6zKsKEgJf4RtKSxq1do65txqXaBgZ13GW4
X-Received: by 2002:a05:6102:4641:b0:476:f020:f1fb with SMTP id jt1-20020a056102464100b00476f020f1fbmr1373703vsb.15.1711493664317;
        Tue, 26 Mar 2024 15:54:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711493664; cv=none;
        d=google.com; s=arc-20160816;
        b=KKd0B1k6qr/knUZ7JDKguCipUr5s+ziakZnKypvyDlezac3Y9dgXU5r71NDrxxt6I9
         XQP3Fc+v+ycGvsLTt/kKnwF2CsPPOLQe9ezBtAXR46Y+/04ILEHqGfEo0p8AyuY2eHYc
         Au1ThZSlkwN+Jpji0toijd22fJru4F11+IlfGVJV6WQzt3eRIJJj/ogLReKUnO4jj3Kv
         RIHsDrnBeo+KSf7YHdCBgaKtAOo7VLMDcIfwDjE0QlFC+tEOEz6hvutCNx1n28SKrl0n
         dgbSWbVCGux2BsgNm/BQHX7SKZdViWjTBhkIHwQ4u3AqTUvrB922ROJGNNptBr+Zf4Dk
         BQWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=WR+SW/1PceyZxFV0jHVJN2zcetVhaSgMPdk/NZoxk8M=;
        fh=iaPVpuc76WLbGRFSkafTCvUFIOAiKPh35cCvp+zBvPg=;
        b=NdG3ocsQoM5af+Uh8oSJ0W3FJk+IgaNyTrm8U2d1viXD7z2JG/SseO3LLL2dePDpb9
         NI6Tf15BXoY4gBFpqE6qzYPu7rPx3g3wLedapYA3tDumpE+XwESbpExG4iTkbrFncJu5
         wZFZW9vc9zH4OK9jdqfMl7GepjDMl7bD6gnO0PsAYQ7nqZ9ryfM8U2CUY2DcKZ/CcwjX
         BpLlEuKgA0zxRqiRVxLBUFZvuZXgis/ykGpM9WRx9J6baLbiFYNQK2eUdoAoK2zbUdZA
         H5Dc9zpxL3FTEm2+M7aNaFGwL1mnV+qPPDUdpGLfgiHKX3vuqPcWVD9Ccv1YUNkUEakF
         L4AQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id h14-20020a37de0e000000b0078a462023bbsi8094950qkj.591.2024.03.26.15.54.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-208-WJRMXUcuNY-4sdtjeEdVTw-1; Tue, 26 Mar 2024 18:54:22 -0400
X-MC-Unique: WJRMXUcuNY-4sdtjeEdVTw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4EE3185A781
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:54:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C14CA492BC8; Tue, 26 Mar 2024 22:54:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 88A3A492BD8
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:54:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 369BA811E81
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:54:21 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-653-XRPFYZcfMO2dnsk-AGbGZw-1; Tue,
 26 Mar 2024 18:54:19 -0400
X-MC-Unique: XRPFYZcfMO2dnsk-AGbGZw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V44qZ6L62z4Pdj;
	Tue, 26 Mar 2024 18:54:18 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V44qZ64Zwzcbc; Tue, 26 Mar 2024 18:54:18 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V44qZ61TKzcbV;
	Tue, 26 Mar 2024 18:54:18 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:54:18 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Jace Kattalakkis <khalfang1366@gmail.com>, blinux-list@redhat.com
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <Pine.LNX.4.64.2403261838200.1398748@users.shellworld.net>
Message-ID: <b74a398d-c1a2-024b-90bd-9d6a1bd1d548@panix.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com> <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com> <bae61399-42f0-d220-f29e-5e8bf66783ae@panix.com>
 <Pine.LNX.4.64.2403261838200.1398748@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
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

tuir never makes it past the api blocking reddit is doing.
I used to use that program before the garbage hit the fan last year at
reddit.
Now it's strictly cell phone access to the site.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 26 Mar 2024, Karen Lewellen wrote:

> Can you be more specific?
> I believe  others have tasks as well.
> I take it  tuir gets around the reddit api requirements?
>
>
>
> On Tue, 26 Mar 2024, Jude DaShiell wrote:
>
> > tuir is what you want for this job.
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
> > On Tue, 26 Mar 2024, Jace Kattalakkis wrote:
> >
> >> Every time I try using Teddit I get a 403 or 429 though, is there any =
easy
> >> way
> >> around this, or?
> >>
> >>
> >>
> >> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote=
:
> >>> Hello,
> >>> for reading, I'm personally using the Teddit frontend, which should w=
ork
> >>> well in LYNX as well:
> >>> https://codeberg.org/teddit/teddit
> >>>
> >>> My favourite instance is thisone (since it's usually free):
> >>> https://i.opnxng.com
> >>>
> >>> Best regards
> >>>
> >>> Rastislav
> >>>
> >>> D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
> >>>> Hi All,
> >>>> previously, reddit worked well,  at least for reading posts, in both=
 lynx
> >>>> the cat and links the chain.
> >>>> Now, even elinks produces a blocked error message, my guess is that =
the
> >>>> reddit community is not aware of Linux and these tools for
> >>>> access.Wondered
> >>>> though if another tool already exists that might be a part of a shel=
l
> >>>> infrastructure?
> >>>> With appreciation,
> >>>> Karen
> >>>>
> >>>>
> >>
> >>
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to blinux-list+unsubscribe@redhat.com.
> >
> >
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

