Return-Path: <blinux-list+bncBDX2LR4P5UIBBKHRQW6AMGQEP2MIT4Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 9554EA09C00
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 20:44:41 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b9f0bc7123sf379954485a.1
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 11:44:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736538280; cv=pass;
        d=google.com; s=arc-20240605;
        b=BJmAak+MeyC+m5wzMNsVgk+MtMkwmF7ixkaq5dIHKEYveXQhOiUnpXeRXS55Z2o1Eq
         vTCSaH/IT9HwhE4QeBZYvCou78OyfHXneBmI8gVMnH0LjfPA1PWFMa4qqmIN/oZnFjxV
         WC23a5qMUG+iVRpZJ57UazwuJK2IteFkbDo8CpYrGJrL0iTTQFRrna3NrO8t0ICV5bw3
         PgxHir8ICE+8vyyFURxDrLbiur+GWslyT1XL48C79H5r+0fZ5/oD0XN8vh/aAZZuQEdk
         r7Pt4+dW1jfnhY+gU/j9lHlWFi4KcUAcAgmES8t5XWYHVCxymd1cS1hkMKQzI2NGmEmp
         wAqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=XkVEqXPM24GU5MUAX4WYZHeseDhWqyfH75tTqE/ZHY8=;
        fh=w6pnTlEs/Zoli+1UaFSZM2QyB+R6HjrwV9nFCQttnyw=;
        b=OdA/uhCBz/+pFLHdwXNkYTRwJnGNsQwi6ltB6JUCLBVgsvLeDrqIJVDxjaGtlpai1+
         PaT0PL0RXxkEAOy2Dly//a0WoZPYfVJtcGqcqHoHIdKuJL1+dJdTBL2Vcpga9iLrqf9n
         fyD/FXxcApRWnTdUSIdUHDNFR78p+wI7H1w1uf3bP0w0bp5xSDXjPcbjpO5OfmY/qTOW
         002t7MZnLlgODGmou906uCpfjAbOWH7ovcdzI7/Rx0EGSyIDGAENy3J72ekGvvM//QQG
         tgrTfdWr9O0AZgKnK/AnUxAwdfyFHYNSXG0FcRnf8iJDSwxfkja5repo9wyM926K6ahN
         kZfw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736538280; x=1737143080;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XkVEqXPM24GU5MUAX4WYZHeseDhWqyfH75tTqE/ZHY8=;
        b=ftQ8yjcWRNGsehxZGXfSRc2Pum3RmwJ0UqpybbDev0yIQ+LHQiadVoomIqbvPhb8ob
         i6scb6vJ+BKP+Kso4n2k5PKzRA8pUyFQM/RulPHkxlZhf27sw+/US3ncVX2QqyXz0sRc
         PB4tj5lL12xzguYh+oXCA4Wfv9ivS85qcaJl3Yy53TndBNusAsHSL3CGC2QFadgpfEuc
         4YaF+EoIIRQJbqYcKo5YdlOvsvSKEiR25+w87MsrB3eq+dcJ/sMUAkgQ9gZUjB43icUw
         U/OMfaradH0DFBgBlxTcRb0u4UCluRPeUUIr5NIaaeGi6E0O4L3mEae7zijZElHBeht7
         gvow==
X-Forwarded-Encrypted: i=2; AJvYcCWrrSGx+fmNG1WFEEkcdNDNZmO7csnl8K5TK2PLh5J+B0Rr/K8w457eJXcgQIR9ww5aorjyDg==@lfdr.de
X-Gm-Message-State: AOJu0YyBMIhQxMFeizBIqCdb3tp4WU4ivuizSUi2NLRW7erB+swFPKM9
	cNOgCq+S9pG8rb8dUEAcMfEqldgjcsmdd8xm7qxb2D1gU7oJMII+kCtmYXetkhI=
X-Google-Smtp-Source: AGHT+IGMR+ldIveb9h3IsMnc4Dqt3cQBS9OBrvzHB1WZn+UbvGvX58TXhrNXrGgj6Tvxf3Zjzl3H9Q==
X-Received: by 2002:a05:6214:242b:b0:6d4:25c4:e772 with SMTP id 6a1803df08f44-6df9b2ad596mr229826816d6.36.1736538280342;
        Fri, 10 Jan 2025 11:44:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:540e:b0:6d4:3b41:2941 with SMTP id
 6a1803df08f44-6dfa37ceedbls40662246d6.2.-pod-prod-01-us; Fri, 10 Jan 2025
 11:44:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWyObGjFP3lieCFYW3aGHrGTQW87uZahVSlYXmUE+qiNvB13hH05uphAutqj71v20q8Ljobv3cRxeOY7Q==@gapps.redhat.com
X-Received: by 2002:a05:620a:c50:b0:7b9:a387:3cd8 with SMTP id af79cd13be357-7bcd97bc29emr1637531785a.42.1736538279451;
        Fri, 10 Jan 2025 11:44:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736538279; cv=none;
        d=google.com; s=arc-20240605;
        b=C1h6S6KgUQo5GIt/Haf/iRCMMguSvInDdPN9z3Cy29Egxdqe/zneWmpWNktfTk9U8F
         gmPW4C4lf19qsrMcD1GZeoA7+Ix22LRbTSsyvHdezC6FyaWsQ8A43Kx0XmcoHqdvadMQ
         3pUh1ZQpQAVyW6H1f5m3TY6w9h/sEcmdP+Y55EiLhZBNm+7f1jCqH6xka1skHG/riD8m
         8cb3hxpUY3xHpYmB2+6BqYgseVp8RhBcEBkPspL+aqPbhuV/td216MojI6yxpSJcdeFq
         zhIrs0YpQW7ng0ehXvgU8HvYSOt1wDJz2I6Ln5+1cg4xGeBQYPbaa7PlqLH2zt3eTU0X
         bUAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=yMRwhwineykzbK2AxA7qYO1WorFcKF6qU4zldnJxjuc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=ljwdLht1rv6re2sK5knfnrMnodEPeQuFhWSO75MNqsPmHibf8K6Z8foGaA2JJCZeEA
         pFr6SaWAonSM2FgNe90oC5/7vXtB8bmVwWW406rf2nj9jxPhKzrAve8gxlITm40q0p7D
         NXZMldX4Dy5/+eht6jakVAf4wdRI/+YQREWY4LljTaZoyVHJVYkRIYNCUHTlC1HTHv4p
         PiDFnaErQ1DLPe/w2WnELiwwkeLpjGli/ntrgZzVpB0ViNlX+jl4AU8KJjDTtCCE4yXE
         0Ii2X5zRIVErgtGthzrzCPtvnO4/uDN/hZcfbELSjL5rHXhCslwDv0kWjIhzXL02yke9
         9y6g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7bce3506467si466369285a.495.2025.01.10.11.44.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 11:44:39 -0800 (PST)
Received-SPF: pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) client-ip=173.255.224.66;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-679-4BL7AybLNf6SudFXJVc1Nw-1; Fri,
 10 Jan 2025 14:44:37 -0500
X-MC-Unique: 4BL7AybLNf6SudFXJVc1Nw-1
X-Mimecast-MFC-AGG-ID: 4BL7AybLNf6SudFXJVc1Nw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3C78C1955F79
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 19:44:37 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1932B19560B0; Fri, 10 Jan 2025 19:44:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 16FB219560AB
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 19:44:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9E9E91955DCC
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 19:44:36 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
 [173.255.224.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-84-x2g2xyQXMIaMwi2-m9uIqw-1; Fri, 10 Jan 2025 14:44:34 -0500
X-MC-Unique: x2g2xyQXMIaMwi2-m9uIqw-1
X-Mimecast-MFC-AGG-ID: x2g2xyQXMIaMwi2-m9uIqw
Received: from [192.168.126.128] (unknown [176.230.58.49])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id AF54FA26565D
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 19:44:33 +0000 (UTC)
Date: Fri, 10 Jan 2025 21:44:31 +0200 (IST)
From: Geoff Shang <geoff@QuiteLikely.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
In-Reply-To: <28b61b1d-d204-4021-a68e-ea755c52ea31@gmx.it>
Message-ID: <f55fb2dc-4ad0-564e-ee6f-0bb605f0d4f2@QuiteLikely.com>
References: <m3a5bzvek5.fsf@dalen.lamasti.net> <a7efe3c2-71ac-7ad3-21f3-800f38ec6207@QuiteLikely.com> <28b61b1d-d204-4021-a68e-ea755c52ea31@gmx.it>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 0swnn6HYDOurraLYE7kZYPTqzWlYd4n-Ryt99mwkLGE_1736538274
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YqUYXumVjx96ZUFMydp8z6HgyIrfp_Bw3HNxwn5dngM_1736538277
X-Mimecast-Originator: quitelikely.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: geoff@quitelikely.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geoff@quitelikely.com designates 173.255.224.66 as permitted
 sender) smtp.mailfrom=geoff@quitelikely.com
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

On Fri, 10 Jan 2025, 'Kyle' via blinux-list@redhat.com wrote:

> I second use of something other than Google, but I would go with
> searx.org or similar instead of DuckDuckGo, which is pretty much just
> Microsoft under the hood ... I mean it even serves Microsoft
> advertising, although maybe the light version doesn't do this. Searx-ng
> is better in any case, as you can even host it yourself. That said, this
> raises the question of how searx-ng gets around Googles requirements,
> since it can access results from Google along with many other search
> engines.


ooo nice!  I did not know about this one, I will definitely look into it.

Cheers,
Geoff.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

