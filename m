Return-Path: <blinux-list+bncBDYPVTOXSQEBBAXGROYQMGQEKPC3ZSI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 517938AB752
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 00:41:08 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-78f08178393sf569022185a.1
        for <lists+blinux-list@lfdr.de>; Fri, 19 Apr 2024 15:41:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713566467; cv=pass;
        d=google.com; s=arc-20160816;
        b=hMKAoRi/o980E/xu87PZEPwzVvawFCwyuLEhgP17AggKloyZp3im0UiPygGLjyZFOo
         b90Tm1dl9H376i7KeJw103kwcp55C1v2gGIUmIVTsWpEIsgRQ/QedMWxar3vvpUr1iOC
         jRHoRBxvCHu7nRE2zUXkQhb9Fcjn9svWr5iZtAytRakLBADFn66nAhUHhEE2RsMYQDoI
         FmoNRERJWsj+55Mr355tnrpq7K5dlLpBjG9KoJFLcjw0E8RPJi67ICW93jfKElwFgMnV
         uDAHlxcrGaykxillShZE7WermBX4asPAPD021LLaKOJf5m2z2mIS4U0eoDECE5Zm+KZd
         RPzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=p97pQN4lbeVPmKyh1xrvXTwZyWOyaV+FGt9Y+iKYjvA=;
        fh=gwoR8WALnjdjJKblNDsA0TfSx3lN7bX7LES2Y3gjlvg=;
        b=IlvXZgEJ1ysZ+ulkWsytR5VwJJVG7Hyr/QG52yBvIDDOU9yxPAfXVCfZgcTYdjBbbf
         aGxp2M1+TqiwC9lktFvAR6VJPTsn8bOq7KW8UBhCaLpcp2imX1bH0b0q/XenjVZwwvgV
         Lg8uEzcnKJTEbpjOtcnNDhSeOkoPvk0U1o76Z11PENhdTgjzqZRlJsqSIIz1Vd4pKgpi
         hZT63TcOWQQgGR8DUWmiPXGHQCqQi8hZiPH1CfDUjM3qW1QCQgyvsw67goVNxsatvKxE
         IjBv6usYqBIbU5NU2liuJY+yMtS/LuQid0MCdqQiciB64div8nab3vQigcUC5mMLhAYE
         hgZA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713566467; x=1714171267;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p97pQN4lbeVPmKyh1xrvXTwZyWOyaV+FGt9Y+iKYjvA=;
        b=Z7sszoJF2Hw/z0BdNmOG/V4PBtkF/Zb8y4qPgkIH2Pu/gxti91V6ifMX3cnkYWS8Gb
         772C8EdbzESTT9VBndUneSp3yEdT4q3VLZ4eZbe5yA3BbtYMT2Ffm12yZ/TIgb+k3oG0
         Iq0oouYfsBTZpYPbX+Pmzl2/V6BtZHIzZT8PP8QuF+UGRKZxrDdSiVcq+xwzwRmCT+Ov
         ysjk5PpL8pZu6yrItLkYMPWUR+ge7MGt5f7Z8n/Ejphxl3OjFg8xFUAeU7IXWrHGqkhE
         NJeyIGvqMtVkv15tW0v53gOy5ogDPWu8F0gTVQez0NYbnTDI8tG9ed4UeqJE4PPCIu/w
         YBAQ==
X-Forwarded-Encrypted: i=2; AJvYcCXbNYxLapBlJchfZbnsdDCoZDCChJsfpe+uzqQRqfefIoy6RzTukIggh95Dzq/rZR7q1UrPJxspaJ+TRrm/BEAZUEZZbIDKwsW1
X-Gm-Message-State: AOJu0Yw9boVUlLWmC9xCQXsO9BrSGU/hdfJOsZSOP5WlvO+L/QhS+ZAG
	ZGNaOt2Ak/OldjQjOT8+0hCXIFEOeq031ceXSoaEh/gNDI7+oGF+fhkAPfipL9Q=
X-Google-Smtp-Source: AGHT+IHYlmrIQe6sTUQXlZctMbXg5GItXn+fHu8PSf9augb9Y1KwYj86eHACp+FNN7HR0LuZUZpnlw==
X-Received: by 2002:a05:620a:2909:b0:78f:c98:af7c with SMTP id m9-20020a05620a290900b0078f0c98af7cmr10147642qkp.6.1713566466654;
        Fri, 19 Apr 2024 15:41:06 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:424e:0:b0:437:c3f1:2ce4 with SMTP id d75a77b69052e-437c3f1326als16374201cf.1.-pod-prod-00-us;
 Fri, 19 Apr 2024 15:41:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU9Y+ryLzA6a9yUmzAsSBEEDCaSLjV7HiX/Srl9OwDhSYjj9ZM+Zd8jl10dxTG2t58pHRLdxwmvjJ/tCtvbgj2VlQYfvlm+ohKVkyJj
X-Received: by 2002:a05:622a:1aa1:b0:437:9d29:c3db with SMTP id s33-20020a05622a1aa100b004379d29c3dbmr10477985qtc.29.1713566465842;
        Fri, 19 Apr 2024 15:41:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713566465; cv=none;
        d=google.com; s=arc-20160816;
        b=frGGEIGDGIjuUCNyqjWssTbiZMTnu6nwFlw6HhmR3FgRnXdwXJwhURg6xYMeH9cMAj
         6t45F9NWV98TrXpyunWnpPOkJLG1bWGkf+3bSS5r2BwLIM4ITCY8T/wgdFzimC3TgeX5
         KERgwzhHPkW0Fx8TnMEWoUF6XMeXvQRYTS99wX3MqkloVyQMV/R/rHldLuVnW+xYBQ4S
         XUnxC/C2wOGBLmj03ZYLeWj5sO0wIJahKJs9MVNA6upklj+s/yA7vcEXHz03OO/niuYh
         htU+uuX0g2Pj0L+eVEC94ycfxcVQxHWVZsSxayoDU9gR+/TzYUZdPNwu5aYa1SmSafCd
         UWLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=0/hLTBMo960cfVE6AqhL/rc52vrI5qfGD7Df2BSvEjk=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=mFoybhbbIL1qVzXyAlw+p1CG3oza5gYUlrDK002bFKR4JpJoqtXW6dxGp6spESeSRj
         //ccLIeZwIczhx1/wJxkom1S3GU5kGaRHpqSyTDWKFmi5z0SZI7jPt+YKCurv/BzkJxx
         1Pffbj5/jdI3BzKb9MeAaFu9JF6AsPS2ugIuCCF/6pr26a3qiXGBx2AHOeD2lomlOriv
         CoxnXCYGrRl8r8bu+AKQo2Ajk28bKWAUB+HahFe/teFjmy0TvfkarH3iFzippfLNqX0H
         E7Snmme+0qZ0wtgVlomRmObVUBHp+2AL6B9yknKH3AAbBICBDAZQ9nwIpBzBIDvVfzgb
         AxMg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com ([170.10.128.81])
        by mx.google.com with ESMTPS id eh25-20020a05622a579900b00431819d4ebfsi4453218qtb.521.2024.04.19.15.41.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 15:41:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-3-Rjl3YmS5PLCJ5X7268Y7HA-1; Fri, 19 Apr 2024 18:41:04 -0400
X-MC-Unique: Rjl3YmS5PLCJ5X7268Y7HA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B10489A241
	for <blinux-list@gapps.redhat.com>; Fri, 19 Apr 2024 22:41:04 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 179DBC271B2; Fri, 19 Apr 2024 22:41:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2BCCC271B1
	for <blinux-list@redhat.com>; Fri, 19 Apr 2024 22:41:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77EA31C0512F
	for <blinux-list@redhat.com>; Fri, 19 Apr 2024 22:41:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-456-wJfwcNvGMMqPkeF4AwVM0g-1; Fri,
 19 Apr 2024 18:41:01 -0400
X-MC-Unique: wJfwcNvGMMqPkeF4AwVM0g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VLqP42Nxqz14Ry;
	Fri, 19 Apr 2024 18:40:56 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VLqP42BLVzcbc; Fri, 19 Apr 2024 18:40:56 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VLqP427p2zcbC;
	Fri, 19 Apr 2024 18:40:56 -0400 (EDT)
Date: Fri, 19 Apr 2024 18:40:56 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: browser diagnostic tools like trace?
In-Reply-To: <Pine.LNX.4.64.2404191814380.1812186@users.shellworld.net>
Message-ID: <733a75b3-4b87-4b50-ceb5-dca1d8662edb@panix.com>
References: <Pine.LNX.4.64.2404191814380.1812186@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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

There's a program called link-checker available on linux and I think also
windows that would pick this up.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 19 Apr 2024, Karen Lewellen wrote:

> Hi All,
> I was sent a event link where I could buy tickets by a Canadian sight loss
> organization.
> The link, fails in everything to which I have access, links the chain, lynx
> the cat, even elinks. The latter presents two items branded as google fonts.
> Anyway, I have promised to provide a diagnostic file, I can do this in l y n X
> with the trace command.
> I am wondering though if either of the other browsers provide something
> comparative?
> I might run it through the free testing tools at the w3c site..if those are
> still there.
> Want to educate about Linux as I share though.
> ideas?
> Karen
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

