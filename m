Return-Path: <blinux-list+bncBCVPTHE7K4IKVQ4ZVMDBUBBHAT45M@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 3936F7FC8D8
	for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 22:54:52 +0100 (CET)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-58d5604c050sf4074711eaf.2
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 13:54:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701208491; x=1701813291;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FmBb1M07QzSuVRjuzyIlkNwmiZVzj+vI7EskZ5oFJuI=;
        b=eWwSLQcViMp9Zl1xREj98barwA9IrDaU85VL73rM+4K763RieaVcV7rSQ+m7QdOZT4
         H5VqglCSLJH2j6DlhcfwV17lRX5wF8FvFqkTrDqgycNqletRKkKNbRhGLclJtWp75jXt
         MdxakqNSF/riKAmycXDRbRbo2mQX1+zPf7gKy8K2TbwNqFvXy6vc0tFMdIMiyIxgd4R5
         tjbtJEjKCa7qK4ioJoIDde1CMPY79BCcCwoydEdVpSszVqCH+Ufm/agiq0LMkLlQ70pN
         fGeBfjz63G2vvwF9RTYkRfnK9YWT0VkY3FfW2V4ihMsAhCrjVwHefyOKoLhB//rtjr/8
         SHJA==
X-Gm-Message-State: AOJu0YyggF0ixEurL53kxpYM4BIQZtUChVF2QMYKcguYTiSYH9hliUs7
	4+Z7AS5cHzVMZD+b3AlfUQHeFg==
X-Google-Smtp-Source: AGHT+IGoeDk2CTzmOp78EfmXt0bUGqNLySRBkyhKWvoQ8GHBOrQb0ZJFTljuXO0MC6G57+YSSEQXIw==
X-Received: by 2002:a05:6870:6245:b0:1f9:602e:7b08 with SMTP id r5-20020a056870624500b001f9602e7b08mr12937743oak.11.1701208490709;
        Tue, 28 Nov 2023 13:54:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:14d2:b0:423:84c3:cf93 with SMTP id
 u18-20020a05622a14d200b0042384c3cf93ls820542qtx.1.-pod-prod-06-us; Tue, 28
 Nov 2023 13:54:50 -0800 (PST)
X-Received: by 2002:a05:622a:408e:b0:423:a70b:e48e with SMTP id cg14-20020a05622a408e00b00423a70be48emr17739374qtb.68.1701208489964;
        Tue, 28 Nov 2023 13:54:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701208489; cv=none;
        d=google.com; s=arc-20160816;
        b=kp6TwnckeOj9HRiW2uxRTgRtuJ6l0By/yxX8TJyos4CHXwv19tcOnqK6wxaW1o+NbT
         gfzFBnxyPn1vGBWcFtLr9XuEusBXZdCJuJjyB33c28o4tMAnfxUio/Krdjidn3xuuzgU
         Jsh/G2lw5bite+8plSL+xurrqe40YdN7mnK5FDw4T0s6WECWTELUQLZLDWXbyOZp2wqU
         wNSvYwyaqaK+3+XkgjqhRuFi02XIc/90v5UGUB/heLSKCcHwGCAt/I80zpPZbhjgOvvC
         exlfMZ+XtO7tgv8PBQucES0KWApfdkRbEVdlPpOF+lUeyAAMoBrxvPcn1K0wueDZJMom
         S0mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=FmBb1M07QzSuVRjuzyIlkNwmiZVzj+vI7EskZ5oFJuI=;
        fh=KMVp+TbGtKVD322h6kz+6FYaExctaXxn0Lhb/1izxxY=;
        b=HsYXQfqGfYeaXgns0ZndKSTkrQzTU8J3G0hS8QJConct3izEdFFwX/r2LB4bUmM4pW
         MdNegXtse5Rg92fHOfdudGrN+9pbidOgcoj+O3hiCNd2cFARuXhnbADVLHg4ui9Hup1F
         uu4uTtIdUdWreVAQBJZq0+hkMX33heITRWEc/+tEtyn6qOqJRIRKshtYP7eGqcJZUs6q
         1xOPuTSynxvOd22N4J4TFPPS/IQqEZ7InCl4IGZxviIB6CR1+KQ+H5Fw1bAvNuqE2gVm
         XSjUrDPwsyZ+fQvmJ3w9zSBcK9XFSJihQWC1zFTnedniwiPSOqLQfpiQdwTwWvv86Xm7
         uJWg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id b2-20020ac87fc2000000b00423c12fd3c3si5630983qtk.146.2023.11.28.13.54.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:54:49 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-XmG4p6k9NkSeA8pcKQrdrQ-1; Tue, 28 Nov 2023 16:54:48 -0500
X-MC-Unique: XmG4p6k9NkSeA8pcKQrdrQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5694805140
	for <blinux-list@gapps.redhat.com>; Tue, 28 Nov 2023 21:54:47 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E2429492BFC; Tue, 28 Nov 2023 21:54:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB1F3492BFA
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:54:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B536C3803913
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:54:47 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-623-LYpaP4ctMqy1CDnaLBZLmw-1; Tue,
 28 Nov 2023 16:54:45 -0500
X-MC-Unique: LYpaP4ctMqy1CDnaLBZLmw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4F6E540508;
	Tue, 28 Nov 2023 16:54:45 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 207B01001B4; Tue, 28 Nov 2023 16:54:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 1FF8410008B;
	Tue, 28 Nov 2023 16:54:45 -0500 (EST)
Date: Tue, 28 Nov 2023 16:54:45 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: john doe <johndoe65534@mail.com>
cc: blinux-list@redhat.com
Subject: Re: Brave, or new browser projects and the command line?
In-Reply-To: <aaa51ae5-e06a-499f-aefa-462bc17e1ac3@mail.com>
Message-ID: <Pine.LNX.4.64.2311281652250.3701114@users.shellworld.net>
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
 <aaa51ae5-e06a-499f-aefa-462bc17e1ac3@mail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1357020634-1701208485=:3701114"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1357020634-1701208485=:3701114
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Yes, but that is my fault.
Fastmail wants to improve their web interface.
brave is one browser they list, but they realize gui browsers can present=
=20
challenges.
So, I was wondering if there were additional tools that  like Elinks can=20
when  compiled  blend the best of both worlds?



On Tue, 28 Nov 2023, john doe wrote:

> On 11/28/23 22:04, Karen Lewellen wrote:
>>  Hi everyone,
>>  what is feeding the question is that the development team at fastmail i=
s
>>  rather stunned that they have dropped access so completely.
>>  Future testing with lynx, links, and elinks, is=C2=A0 intended, but the=
y
>>  reference a new browser, brave that I=C2=A0 have been asked to=C2=A0 ra=
ise here.
>>  does it come with Linux builds currently?
>
> https://brave.com/linux/
>
> Am I missunderstanding the point of this thread.
>
> --
> John Doe
>
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-1357020634-1701208485=:3701114--

