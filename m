Return-Path: <blinux-list+bncBCVPTHE7K4IOXSXPVIDBUBFUB5756@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2037F2123
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 00:02:04 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cb7c104ddsf55610991cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 15:02:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521323; x=1701126123;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4c6wwMFJzk5kcFRoS7nfciIIWFvRDLx3IVT4e42STmA=;
        b=qwIdRxK6wnalv8mUQwJKzkZ0VJYdJAoT0gvk8jxo4qCxCifjfaqrRnDQGRMbyBD3u6
         j6WN6RVCqJybSmJaTZA0q0tANaQrYUkger8juVBtobXJErovkPtIZsFyV+KdRzSfjYHH
         e+zrbC51I168g2TQ3kw2CLBmXO/+clV7+/3PFqAZUjZXydgIAseUJtk6MHBN4zlAQbF2
         qWhNxggj/GVdA96l1QrylNEKR+pgpeDnkzd4abSqkYv9FAS3yEQ1eS38AObULY0qrrMq
         4Hzku6lyzYEevc/QBMyHRlhNVVLFckSVGDfpVndhKgb61+KLV7mV6EqWeMWUjnTzqITQ
         rPAg==
X-Gm-Message-State: AOJu0YwhpZ0jA1P1mfDNcp/82wynXQfXlQSXfDDBZjPWalWqCdlN6Xfb
	HIKfeCyDgtdmvJBGyvuldGIweg==
X-Google-Smtp-Source: AGHT+IGfVa4clmKrNM9piUNJaJDo0cAnY8JPDZjqAcQBwlSdwetJXjIuS+qyrm6WdxRVTdRvQMs6nQ==
X-Received: by 2002:ac8:5fc1:0:b0:41c:dc85:1c17 with SMTP id k1-20020ac85fc1000000b0041cdc851c17mr9937769qta.66.1700521323382;
        Mon, 20 Nov 2023 15:02:03 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a1b:b0:419:8cd5:bd4e with SMTP id
 f27-20020a05622a1a1b00b004198cd5bd4els2697441qtb.0.-pod-prod-02-us; Mon, 20
 Nov 2023 15:02:02 -0800 (PST)
X-Received: by 2002:a05:622a:134c:b0:418:2268:992b with SMTP id w12-20020a05622a134c00b004182268992bmr12192464qtk.14.1700521322612;
        Mon, 20 Nov 2023 15:02:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700521322; cv=none;
        d=google.com; s=arc-20160816;
        b=UUcWgYivBConlnXNgwM/C60OWQ7HQ7HQz6ICcDt5bDe314Ags5X7i9wkSuXH6Mjvid
         9ZJ7C6Ay6MMGAvkQ28JAPICsD3CXzm6U8CgC/oCK0GuDz/rwHKie9hofmw9roS5KvBX4
         uvBcL3MuzDmGC2VLeq9TVfTGgQzowUBTaczJLiXaxdJ8dAk2KaY1iu35A6XYZYTe+RzI
         WV5ovhhEWpZL+DE0W4LNRkz8esK9Cv66X5asYwEZG2SD3YfBTWQdSaiCUk2eO+SnCuQx
         cdC2VSfyBLEW5IdCXUFoND0/0AgiMrEgOjNIHa4uf8ZEUxzgdc+ZM8Nm0Dyr4gOS2g5e
         WwvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=4c6wwMFJzk5kcFRoS7nfciIIWFvRDLx3IVT4e42STmA=;
        fh=0kBSTeDSkVtdfPb7EV0XGL7Riz62GdTgvh2fah/Lr5E=;
        b=UPMNp4P5YXhKdY4sjCB7SuPdBWmI4AWq+btq04S1N7p1aJcxhOI9E0LR3RcFD3Q6jt
         VsB5vb+YLQB5PCMtDZUpquHkEbHIUToBSfm9hvKx6XJvyqm0Gg9hae7cuw0g8xDIidN+
         2baGrKmsK4rAFFt8OVFqWUEO6tyI2Rxo6nooGQkbO7K5d3LkkBpkg0eXeELonRbZVZLK
         tEHK1/spamlBSeOPyFeXzQC8/rT+QB+qOWrIvKGwehPuAqoBvy1IeMbDXEJw6SRUctBM
         Ztdos47VXToOPmaNAMuwXOM0IgoZl98F7oFM6DU7ot0jU/IjRTaMFJJ9GDUl9UB8rtpl
         q74A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id fv17-20020a05622a4a1100b004236df71ca3si548385qtb.165.2023.11.20.15.02.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:02:02 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-DAUiRq5cPUSGXyY6BSTlKQ-1; Mon,
 20 Nov 2023 18:02:01 -0500
X-MC-Unique: DAUiRq5cPUSGXyY6BSTlKQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1D3728EC109
	for <blinux-list@gapps.redhat.com>; Mon, 20 Nov 2023 23:02:00 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EE9A62166B27; Mon, 20 Nov 2023 23:02:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E71F12166B26
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 23:02:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C82A685A58B
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 23:02:00 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-639-AfcPPcspPQuAEbthLbgUMQ-1; Mon,
 20 Nov 2023 18:01:58 -0500
X-MC-Unique: AfcPPcspPQuAEbthLbgUMQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3F35940508;
	Mon, 20 Nov 2023 18:01:58 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0A0FC1001C0; Mon, 20 Nov 2023 18:01:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 088D110009B;
	Mon, 20 Nov 2023 18:01:58 -0500 (EST)
Date: Mon, 20 Nov 2023 18:01:58 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
Message-ID: <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1136697486-1700521318=:3563251"
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
--1949452079-1136697486-1700521318=:3563251
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi,
my problem though is that I need access to the inbox contents entirely,=20
not just to forward.
The Debian list  is currently discussing things like mutt with gmail, and=
=20
imap as an alternative.
Apparently this bypasses the security problems with gmail in general?
And yes, I send from it too..agree that hosting your own mail has=20
positives.

Thanks,
Karen



On Mon, 20 Nov 2023, Jason J.G. White wrote:

>
> On 20/11/23 17:30, Karen Lewellen wrote:
>>  Anyone use=C2=A0 mutt that can lend documentation, or a hand?
>>=20
> I'm familiar with Mutt, but not with using it with Gmail. In particular, =
it=20
> is my understanding that authentication is more complicated now than it u=
sed=20
> to be, due to Google's security policies.
>
> This article seems to be a reasonably up to date starting point:
> https://www.thetechedvocate.org/how-to-install-and-configure-mutt-with-gm=
ail-on-linux/
>
> I have a GMail account, but it's configured to forward everything to one =
of=20
> my "real" e-mail accounts, and I don't use it to send messages. My Mutt=
=20
> configuration is et up to work with mail on my own server.
>
>
--1949452079-1136697486-1700521318=:3563251--

