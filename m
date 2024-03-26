Return-Path: <blinux-list+bncBD6J3OOK2IIBBYEBROYAMGQE7KCFOPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C31788C22D
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 13:34:42 +0100 (CET)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-dc693399655sf10035000276.1
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 05:34:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711456481; cv=pass;
        d=google.com; s=arc-20160816;
        b=TkxIhAFN5oAg5+Fkpvz4vpRm18RVtbtMtfjcVYFxOtJzfTXhMQzY0Nd8UnR6XAIJ/g
         0uvMH3y9pjUE3EKaVUHBn54Up2m5aKHIVkvss/nxzkDQby7h54285A+TYmaTs+/9Bj+0
         td3vilk8gOd6sul+ySDgJ0yP8pXUp19UsEwi/iZ4nAxx1Q6YabD/IiPph/utSmXFqHLN
         ahcIzsgTZG3PqY/qx/9hwtO5Fy1SGRUOtLDO2q0msVRBEDl5Pxp2miyBEeKRoJvrs5Fn
         1cA/OJTvguEq/sXTg4v8u1MKUg3wcg2wmrMmE71DHDTbP56DOPV8gU0NaAJkNc9lLwIm
         VBNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=qWibn0uu4cFTP77Z8nPgTiVXHvq1fje/VMBTLzSZDUE=;
        fh=U59fV5+3fmUlUuhLHqeCCCtufZiRJ9y9/ny7NidjbbI=;
        b=OWK09WfZRLx4YEPMCFXeUgG2jVOSO585wVpzEwAaQpbb49cTIN0V7GO//F+ygwn80m
         Tpf1jrBGBJCSq67vC/cvJbfLgrV135eQlzFP/tdJj3W75jGuqwLu8YT0wAptpYU9BMnJ
         VLsNIEhcWZOu01Ws7WtfQ2BJpj5eY058YXiWKANS6nLd5kvi2U5WaTdA9qsHAQgQTG5h
         dte2GmWWxGzSQzK8e6eZWXgnPQRvV1WfUuHgkr0/OyBnPqRXnx1K5ShZB9zDsgUXfo+j
         yXJcOolRT38yYcyCVsfKO4Z7ggCAc3mseJv7BSbcuxxUJO/0Qksj+dNRKXAKUPw+9JBO
         p9Gw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711456481; x=1712061281;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qWibn0uu4cFTP77Z8nPgTiVXHvq1fje/VMBTLzSZDUE=;
        b=Owict1hwH5/DibkgUY7u1ifV5I5EYBSZGqBx8lMZvyyXRbDTtQEF7YMrddB9J1w8ch
         xFTHBDB1qhPsw3aUwwuBfu4QXxOmb+UBtWpuM00/irjIb6DKMX1O4asIP8Dr5bz3Lc0V
         DZgootziMdigvLHF/d2xB7FOCzdOTv0WzS8kc2WytNTxplHswwSppcDxBO82JqDbEFmZ
         4i+k0S9MknaegoDjJ/MsGdfLLg1xyrILFlcHR+dgo380YlU4m0e7RRWOjzFESJqPpT/n
         ZTqJ5l95hdxBi26M/P7Bt1SEl6NT5EWUn1jgftWEBZ+y7Z46oX8OKQalBMrabBG/jafG
         DlwA==
X-Forwarded-Encrypted: i=2; AJvYcCW/RnXM8POXHLN4D6NKZ1AnF8vkcXnfvuuq881TghjwxY+r6e+sj3vYXfRZTbNkRBM87clScFnJnhgWtmtnessTFPV8z5NYu7i9
X-Gm-Message-State: AOJu0YyPv0LrHAvYeCujYKuYrhORnWh94zDSrcQDZE5iAUtcovR9mchW
	ePT11HIOlNAKtt0Z08/icNC1wx+YVZqv8oJfaxqs5euowQf7SdPI7CzC4t9SsuQ=
X-Google-Smtp-Source: AGHT+IE/uUfSbYcNYiU+zwRmOPkS5VuB+OGjHUkcJxjSq4NvNLvltm2M0QHEOxEJG/w5KD265JWFpg==
X-Received: by 2002:a25:df06:0:b0:dcc:1c6c:430d with SMTP id w6-20020a25df06000000b00dcc1c6c430dmr7618453ybg.12.1711456481017;
        Tue, 26 Mar 2024 05:34:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:cc3:b0:696:9190:cd48 with SMTP id
 3-20020a0562140cc300b006969190cd48ls3013912qvx.1.-pod-prod-07-us; Tue, 26 Mar
 2024 05:34:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWA+g0QRR9MpZPj9dwEmJrZtxyOwV6FQKt0vBxc3naLc0I/eN7z6IfpDjHyb2CM9ordmPCm6HOb1niu2D3NSYVnzs6S3S/jxvsugv/n
X-Received: by 2002:a05:620a:1246:b0:789:e1af:6038 with SMTP id a6-20020a05620a124600b00789e1af6038mr9827322qkl.38.1711456480297;
        Tue, 26 Mar 2024 05:34:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711456480; cv=none;
        d=google.com; s=arc-20160816;
        b=EtwOQwbqLeAaHlbZTSq9bIStyfeFABTVo91qWu/S1UXsxJLg/j8DiU9qoB89vXFmkU
         u6iPCgS9r0zf5wRm3TriQtEBacaA1LX9/EV6/5QDBo4E7poPIzFA3f6Efx8I+tk6PTvu
         6Vqgs2UWi2rDCqrr7Yf3al8Lq5alZ1gPc8EPQeuhU8+ASzr/RH0076UULVO+a3fNihMH
         d/Xoc+j2r+K8Sunu1PsOy5U22+l2ZR0XzwOi4IePfJbAw7GBzqkFV0+fm4wX5mKF1CMS
         prcssh/tHQ8GSr/M2lxocFBN1X/iV74CF7kq280mVllxsv/zq6/y+HVL2Ob32gDP3sB4
         TP4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=t6BOTFnSSg0frH4lxM4DNMkNFIagpNQ8oTc6mDM+OgY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=qKTWKFoGaobj6FSWu7A3gdOHB0h68iNOIHyGe7uWP7q5K0JGW+XX4fIIbTAZT/6m5I
         JkhGkw3BQnBksFHCPidOTPvCqdkLP8+7ziuD2inzUYOGr6ew9whuSE0+3CcdiqfGmQfg
         8Od5rngopeUOD3t8N7Fwv8gjc4owKri4UpOMIvQBf/EuR14j3hnG/ZnNTFNWe6vFovQk
         y/oOhXMIi+9OMgQeB9s871bPzQDEF8pc1enihNJGQmhxmCVDv1jFxXUAU6E9t7Ls9rOU
         jqJr8IFNFaSY8zq2AJ7JfhpfKceCDGO+LBXeyBKMIp8o9/yYDu7JnUn+9o6DEc3VtUxO
         TLMw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id xz20-20020a05620a5e1400b00789e2f74bd3si7457564qkn.464.2024.03.26.05.34.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 05:34:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-YvDu4zIqMQeGGUpGs2mgDw-1; Tue, 26 Mar 2024 08:34:38 -0400
X-MC-Unique: YvDu4zIqMQeGGUpGs2mgDw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DEEA58007A1
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 12:34:37 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DB9F3492BD3; Tue, 26 Mar 2024 12:34:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3199492BC8
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 12:34:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBAB5800262
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 12:34:36 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-191-_VC4niSePJO0odQIeC6rXQ-1; Tue,
 26 Mar 2024 08:34:34 -0400
X-MC-Unique: _VC4niSePJO0odQIeC6rXQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MuDc7-1sjNoM35mn-00udGa for
 <blinux-list@redhat.com>; Tue, 26 Mar 2024 13:29:32 +0100
Message-ID: <20240326.123026.296.25@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: is there a command line Reddit tool?
Date: Tue, 26 Mar 2024 07:30:26 -0500
MIME-Version: 1.0
In-Reply-To: <e951fe77-674d-45f2-a6e8-556493c84318@panix.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
	<e951fe77-674d-45f2-a6e8-556493c84318@panix.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:KdN847IfidOek1va/m0ejdqR44cwVV+tppgLA96ruDLCB13XI2u
 il/fePV1AfvkuxAH8xZNBCirJHDfB+RRcNKRW4ei7+ZOM97aLBUkxGKyeIAw1J+x8nAbveX
 af2fFz6fXmFNZtRBGCH3hPMy+0ezPS9hd79wQJoJhCF86QTBrkSgp2eJNoYTW7Zdltc0TfK
 XyN8oMSt7gORFujolDJww==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:toDzpuncvxw=;cD+w7YHtS5OQaqqUokP9DSxaWVf
 6YIw/HWA2loWqjBeRxoowOahS73tXXBGM6cYo80c6Tt9nyivzCB6PHxEEscHJmFnGBaPA/XY2
 rR1dsuAD+JvqSkArI7dfxsdH5mnQlxNrA2Ob0uNBZW2246fJ8/N524ChzYrl64iK3MhmhONR5
 rx0pXK3GS7SVe3g2WXcBtiEYQGja5Ka9sOZO5wlQfL7g2QanbdHfk+e1lipTqt6WJhiv2dg2O
 PyUxgbnZYr7a3AVPSuDuhko3n9hNuGu/Clp31a8i69+4FnJIo3dcRSayLfYCOpS96UbHIkdu5
 Lg6ZuIahBTQ9CaziKcuYrlzaVq7wZBcooSUNOT6xRKa+gRqlZxkqOoKCxxSb940Rbdw8KgWKn
 aV1Hoe1JGmR3amgRjPtSd6ZOT9I2YA31xX50eUtOPSip4wOFcLjTdMz/v7eNk9zXIZ7P91wPi
 /VSv+SIH8/KT6thNMRE5Endes2Kh7jZk5RENBAgNmEbpOASh8TuUy0nElFKTmGMHPt6URAwFb
 jFAJQ4zhoWeFNAbJuJATZ32BQfEgSaXecQBZd4W86rkRU3fSYE7vSTPvV51he1+PlmKvkf3p8
 PsFh/PRtK6bTCvV5AEsRF5SICDcwmdiHeVtwigo/TSZsi6DR+6DSHszwlqmvfZywftqc/jnbj
 kt0jiKy77ER39OlRh4g1xztMNnw02vsr05stEc2dNtifiIC1qxws8+ppahhwWBmovb1aF3Nwa
 /of331dDxdBCxK/SY8FMg407NfP9ppTJHp3oL86gvQPzwsSfVHGUmYzon7hhbufuyKsoAOP6t
 VjsErZgEJurLx7DkpFB5lJRgYANy/9P8sSCnNa0IfmD9U=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Not sure those will work since reddit disallowed third party API access.

----- Original Message -----
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>,     Linux for blind general discussion <blinux-list@redhat.com>
Date: Tue, 26 Mar 2024 08:07:16 -0400
Subject: Re: is there a command line Reddit tool?

> https://opensource.com/article/20/1/open-source-reddit-client
>
>
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> On Mon, 25 Mar 2024, Karen Lewellen wrote:
>
> > Hi All,
> > previously, reddit worked well,  at least for reading posts, in both lynx the
> > cat and links the chain.
> > Now, even elinks produces a blocked error message, my guess is that the reddit
> > community is not aware of Linux and these tools for access.Wondered though if
> > another tool already exists that might be a part of a shell infrastructure?
> > With appreciation,
> > Karen
> >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

