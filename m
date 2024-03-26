Return-Path: <blinux-list+bncBCVPTHE7K4IK3EENWADBUBC2GPTES@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A92A88D08E
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:11:59 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-696a9c482a4sf812116d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:11:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711491118; cv=pass;
        d=google.com; s=arc-20160816;
        b=XRtMFSwpTjMhrdK+s4qPrvHH9lQUIU/YYeg8ruuLM/IQSm7HtLOJ02XZghGI27kJG4
         6kBY2glPuLOInHJgenpqd2wzX3NTime9XyhstJyYh5HMe+fZ7UKfJDCsMHg2JUF2ncoE
         QF2swX/dhsiCZDwbKsrixFmjX+bWd+n2JoAOnTxlHG5lxnLoXPju6xuxrab1JRmlw3Jm
         Z15/WAUeEYsFhDMl+Fr6RAB+ma+Y+EKuILl8QAMeoh9ly+4uXgiwTgYIIGXpQDHY8VUw
         39heX3TpItRWrn9QBO7AXH4fsH09g+XX6Uf4R7209x08HRhca4ob0KV9ifUeqEb9EuJN
         tqbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=FIm/yFwfHjiy08ZongF8vyrZG0Y5ty/5LvwAFVTlP8I=;
        fh=emGTR54cAplDWQU72hw0g1YkUd0qfrdCBOTehZ0wKaU=;
        b=K6O1fUoAFT2GPz2j7QQmBkFy5cFoUztNg7j4L2Rx8ZD569KoXGXzyM3vvPoA+TTAdy
         H1vMIZrlTtquubZ8MbCCsN3XUk58RByYCvlAOE3iQ3e/ekNlueFllQQYh+/pgukz2AM4
         Wk/TqoMf+iWsvrVXmYwjs0QTU2xX3tvamaqlvkVYYRKPJroV2oo91xp6jnzSd70UEbrQ
         HERli2z3PAhtEraM3DV4hiSoxUC/CXnz+c/EY5GduAqq3b0A9AMf52s0kFxmccbXyq3a
         7j8HeG8oAk+eXeendvDRPDHrbkdrJdOjl8H+iXApEUDzSbU9xb8yBm27PhEl6Wev3kU8
         GvOA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711491118; x=1712095918;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FIm/yFwfHjiy08ZongF8vyrZG0Y5ty/5LvwAFVTlP8I=;
        b=QyKJpeF63Z5TuuT8U8INFFY0YNsI8slybkJZsal2gp2OYoQ1UC7RhdJhJ3PeMrqCH0
         qFhmYla/+D+9z1HO6AGDT4bd7hjmKY9svbAZu6jSI0veUuqM7fsQll+nqxOsVFsAMELf
         5eMI9i5zFn1VmR8IOW7kvIv6zyW/2KKnWMP0byzYMIgYS73pobcgQ/gmwAKlZO5fVncg
         SVkfSAtsxLPH1BDyHFvMr2rrzNP3pmV+VgcEmr9d8yZJS6E53R5XRZe0uO9Hfpqh/Vmm
         Ry1ouTxsX1PN9FP8Ij4ZnyBWFFv+50Zowu237NRS6XsdQ+MmNM/oGHDosDVLck0lMbd0
         ak2w==
X-Forwarded-Encrypted: i=2; AJvYcCUBYzrOWtctSAjJKG/lNkhgakz02kVj2ZF1P9OBHt5aMVDNDjqLwOEBoQpeqbk/kG9FnGwHo9vy3U8P/Q2bw8zw4JFwlojMTu34
X-Gm-Message-State: AOJu0Yyy7mkPDNzNQOquti2xj60zgYCF0mxRkWH6cERQZ02d113BnYxH
	t3e/XYTy2aqkqa8dvgHU4Q3xePSmkPdUGe9a/OMkxd4eflU/ZoCXQpOL538tyIE=
X-Google-Smtp-Source: AGHT+IHs2JJl01yLFy0UKAQlzNlEci/MeRPliGJIBVQKpwW/FxpzgHBrMj2RNeBSHoXvOWonXHzZlQ==
X-Received: by 2002:a05:6214:419f:b0:696:8ab8:76b0 with SMTP id ld31-20020a056214419f00b006968ab876b0mr8162573qvb.1.1711491118272;
        Tue, 26 Mar 2024 15:11:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:252d:b0:690:db56:6d5e with SMTP id
 gg13-20020a056214252d00b00690db566d5els2048970qvb.1.-pod-prod-00-us; Tue, 26
 Mar 2024 15:11:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVLtCzRNRLjZnR9ZWGxAVfAfjB05qLZEZphXlUQPeCRiNl4wHz3TZgRDgNybJVuaiVRhun2xIVJeFhLnjUM+GvOWrPf47bl+pzdO2wX
X-Received: by 2002:a05:620a:3798:b0:78a:5387:db81 with SMTP id pi24-20020a05620a379800b0078a5387db81mr3834920qkn.26.1711491117156;
        Tue, 26 Mar 2024 15:11:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711491117; cv=none;
        d=google.com; s=arc-20160816;
        b=cFcIfQ6w5h1IffO1+byzEVRgJBv+nHT3E+yaDtH37T8HCYDawJfCgbNMYFXCaRJ99x
         BHPbe3iq+IFYZd4KqibLnud5GkF+AGF4JXzClSYGQPQWZtWnRtmeRYwyBleZ1obYkZ17
         MLdeWjIYFllzMc3ipFLc0kxJxxJjK81mrVp/hrRaSgrAvsVYpp4bxO3XtirVH8/CiFfX
         BnWyblr1EJbD47wTkaJXk6GH7hh2QeBr3JGhDlg+bKQHInM4Vow8yXuMCU4F8gZr6BUC
         wjTtZtBM80co1/khAmwhh5sdKxtt5w2hr0RoYarIIJ3VaqyQRY0FSPbxTcW88q4XmeP9
         +ZHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=FIm/yFwfHjiy08ZongF8vyrZG0Y5ty/5LvwAFVTlP8I=;
        fh=ISBACCKYaUFcvdwzcLu0GMVPpgNsMnO2qtxZe5WiN68=;
        b=hX5zrhtb82TscvrLwt6e0wKuQRyDEbf7nQgtj+YaBHE4v4KRPh08uxazFp5zXRoe3W
         hZQlY3UfvIUyqdORd57Svz7VfR+4OQ6y79J2L+klTeY62s6b0GZ42ankYW/sF5Igs+KM
         3cff4wklNGGuNvg0Izq6PAKXplJHjoevk52gKzYrXUdQAxWFp8xQDerzQ/sJXD1rJtRp
         s7XtbwsxBhI4FBtl1t63y4za5a5DukQuIXleUGQhC21+1P7uSvn11Li6Oh0THQ427I2Y
         w3vnz9zORNHCWN7qW3s4jvqdBwlOQ4XcZiFS1rCOE9Mkznzf6+agKLCVwV33nxFqbPoe
         PO7Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id n23-20020ae9c317000000b00789c65bc24bsi8462358qkg.724.2024.03.26.15.11.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:11:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-433-SkHJLJHGOcS5UfOBgIbjgQ-1; Tue, 26 Mar 2024 18:11:55 -0400
X-MC-Unique: SkHJLJHGOcS5UfOBgIbjgQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 582F7101A526
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:11:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 553E51C060D4; Tue, 26 Mar 2024 22:11:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CD871C060D6
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:11:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2AEA185A781
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:11:53 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-231-nqf_JOupP0CEoeJBWGnMBw-1; Tue,
 26 Mar 2024 18:11:51 -0400
X-MC-Unique: nqf_JOupP0CEoeJBWGnMBw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3E41A40508;
	Tue, 26 Mar 2024 18:11:51 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 054D31001AD; Tue, 26 Mar 2024 18:11:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 03BEB10007F;
	Tue, 26 Mar 2024 18:11:51 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:11:50 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jace Kattalakkis <khalfang1366@gmail.com>
cc: blinux-list@redhat.com
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <59ac150a-ffe0-4b3b-bf44-e32087c8af24@gmail.com>
Message-ID: <Pine.LNX.4.64.2403261806030.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <59ac150a-ffe0-4b3b-bf44-e32087c8af24@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-679562725-1711491110=:1398748"
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
--1949452079-679562725-1711491110=:1398748
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Thanks.  Previously I would search for something via google, say a harry=20
potter fanfiction topic, finding the discussions on Reddit helpful.
Given elinks can be compiled with JavaScript functionality, I hoped that=20
it at least was an open door..I can use elinks at paypal now.
Only  more frustrating thing then reddit is Linkedin.
When I joined I could read items and manage, now not only is that door=20
closed  post Microsoft buying the company, but I have yet to find a direct=
=20
link to accessibility...the suggestion that everyone requiring=20
accessibility solutions should use be my eyes is disturbing smiles.
Kare



On Tue, 26 Mar 2024, Jace Kattalakkis wrote:

> Reddit is very very much aware of Linux FWIW, but the whole kerfuffle las=
t=20
> year about API and just how their site is likely relies on something that=
=20
> text browsers don't support and it happened recently is my guess. I'd say=
=20
> poke around Github/Gitlab for CLI Reddit clients but not sure if they'd r=
un=20
> into the same problems with the API issues though, I always found the CLI=
P=20
> aps clunky to use in a terminal though
>
>
> On 26/03/2024 03:22, Karen Lewellen wrote:
>>  Hi All,
>>  previously, reddit worked well,=C2=A0 at least for reading posts, in bo=
th lynx
>>  the cat and links the chain.
>>  Now, even elinks produces a blocked error message, my guess is that the
>>  reddit community is not aware of Linux and these tools for access.Wonde=
red
>>  though if another tool already exists that might be a part of a shell
>>  infrastructure?
>>  With appreciation,
>>  Karen
>>=20
>>=20
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
--1949452079-679562725-1711491110=:1398748--

