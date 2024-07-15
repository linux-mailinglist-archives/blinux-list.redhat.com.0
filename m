Return-Path: <blinux-list+bncBCCIDSOV5UGBBAP22W2AMGQEQFWR2ZI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C785931B37
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 21:48:19 +0200 (CEST)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-650f5b28822sf87361817b3.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 12:48:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721072898; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzG5c+q2pz4ehyeFWvbDcp3fl5VEMzRjvoosyxXG22pfbHAktOW1gtFpU5Nbea0uHy
         i3zwmZZRXyajc07GkOQ2Ho5k0vyb+O6emV7tmvpAafegWHib4RNkGuGQ0XxsjM3NPFsB
         DNQ3Xf5Ive54D2Tfl67ddWxTwyPeqMfgjudj6F7neRWwRiXjwL04aYxDt2GUqOcvJY65
         KXgSoXrOSLoL1l8m1840IlHwaBsgMgrrdN3cKmYWjxtA/qImohdybWl7CLG7smtVLEYQ
         3Ezf2CYttSOJbu3O50vFXAOQy9RHq6mgvQ8Klqx5NgVxgyObqG/CCKEuSNCBm5EZaosw
         V9LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=AwZvMYvr/0rG4RY2GGQUP+e401GjQHZDfQ8Pur/65IY=;
        fh=7Pk5JQTxGKyWX8ztffL9dLW/Hq27KsMZs7p7y3qZHfw=;
        b=nRb/FSqr1+05X8lgqDzAGj3zuKCB3aLe75qiToccbgyzxDP4Vkb8swyXYOJT0NgnhE
         cD6ZesiLiuC2s0z0VUcQUrqgV+EWu87BBkEaFXoSBVJyhcjSsy5Ybfqpa8XuN+HdwFPe
         f91FOdbCoMyP6G+Cyp/lcAaFGU75GegLNGsoUVglJQxuqr6c9gfveKCo4QQ0Kv78Sw2S
         n8BlsccFbpBpOOEWWtFQtgIQrBYlE7TL5wYA5y8Vu+dDw/r10A2FDuLZ3sJy4mykTeuM
         EHxHWHWXO5gkFe/nw8a30Qhai0wydv0p4DRcTaTL4j4FKtFHneABA3i6gV/4d2PSLmHN
         3X8A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721072898; x=1721677698;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AwZvMYvr/0rG4RY2GGQUP+e401GjQHZDfQ8Pur/65IY=;
        b=BM4R8gINPz9GKYKzdG5JJwP1Udg56m47iXS3JZ9ckrknzUM2nV2e0gXEHeLB5sRVJR
         NPrHZ8+b+LLPGGPshoJ4nz64D2FRz2g0vHVN0F1v92uHRugj0n4aYrZrAm6JAYnEnTm4
         ZeuGDXU5q364HY+8pCY+fUE28z4kzjxxPtvfBhlgAFZLnMALHrJ31dTxyXuFEIoV68bC
         g7SetuB+UWCQuhkARJ1zGUTDCnZVCIjv78dKR+RbS3TXsNFsamgEKh437NRAMwEC4Kcr
         XA/sX1Qrbdy1Jg01vQrT4lyAotFCvzfnj5LHvdg6tYzW1mcUsR/brOIREMfKPWHjdo1p
         eSQQ==
X-Forwarded-Encrypted: i=2; AJvYcCUM/fkZZgCpERiIiVS8XHDaDVwY2PAa9ottUkahuo5ND7X9WRNAtxH8dzax6KlldkcSxBu+RhaNBh6xw1wy5iDoOIPHyqfWg26H
X-Gm-Message-State: AOJu0YxxuSE5Vb4+R6DoChpQEdARC31e0NQmNicdMrwaay/uwrgdBD0j
	9cvcA59GeHk3VMXHdPry6HZnIWpnCXJ+hVUvW/67mcXR4neKAH8MaRv9BIsYaHk=
X-Google-Smtp-Source: AGHT+IHGrh36IP/wJvWXs/jMeQ4+6sLppmyIuyezFlbua8xi1ua7j+a8qCm1QE75wQ5zm65cnce4LQ==
X-Received: by 2002:a05:6902:c0a:b0:e03:b2e6:2c00 with SMTP id 3f1490d57ef6-e05d5687d13mr212359276.14.1721072898259;
        Mon, 15 Jul 2024 12:48:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:2b86:b0:e03:3d23:3957 with SMTP id
 3f1490d57ef6-e0579278ac1ls7238421276.2.-pod-prod-05-us; Mon, 15 Jul 2024
 12:48:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNBpbkBhImsoPi9bLkMLTbeI8BnB6vqUydaQBKepT0hQv1Y+qnvLsQP/y5Xvd1bs2roBsfXRF+g+P1Xmvad4vZoURbCEZTsyKTf+Ej
X-Received: by 2002:a05:6902:1141:b0:e03:4648:5248 with SMTP id 3f1490d57ef6-e05d56d7dddmr199439276.31.1721072897214;
        Mon, 15 Jul 2024 12:48:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721072897; cv=none;
        d=google.com; s=arc-20160816;
        b=Tye6Ih3cvHb8olVkW2hdwo7kGpv8W+QjxWs/Icz0UFXSLAl2hZN0//g6NDYd7UI1LH
         T9TX378qUHp98+H9E1uoNChjH5uT4UQuePwdIz3kqD5dnTeNixssJZ3IUJUqOinjMMCz
         NGH6qtwwcrhCY88t3n0dix4dIZ/iIcam7YLyzSq1f7E4TuAINunufzfRA+lcRjHpUQB6
         +2mgRhVGe/ujpin6/eKajylyLC7B84w1f3PlKniy9Ei7iGCJ3A714QdRKG8taImZqkyx
         d84ocdDDBCcm7qw6INpM011MxqJXBJ2/tjIJ0GeKRO14wM45Qab1nTDgzXiArkfxtqcz
         dkOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=j+0nyQv7T0CDoIKRC0YKVtvHX00iDxs5efgrwRYVLME=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=TeraVTUibcZGMlSjMKMd1KfpdrYdZeZ5gcqEhtKWuFR5+RzvU973m/ga5Is+6L3s77
         5TEByQj33P1zky2zUWpDQ148nTjTmHxGIUBcoHHGvgG4ZFZEkR9Nr8f/TYPTKAnV3xWL
         MpjShRfHVK2v05PUev+xDBvF2YWmkCYFOOp8ws1/I5wpfJw06MQ2f56VDUwuldH0QsVH
         hLL/XLtiheMQvdt8KuOkBuY/wzTwWZE9ur4VLzOndfpM30xHwMhyXON2ca8okzDwHOox
         FeZhcCjXzMBAyg83fpMOa0AXXbY/DhzYknRxnsz2g6igYppNTcGEiURhP43fqcQg/EaS
         Qd8A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b76194ef59si58482946d6.22.2024.07.15.12.48.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 12:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-378-i-rHwm3LMLWS7-WreKvWkA-1; Mon,
 15 Jul 2024 15:48:15 -0400
X-MC-Unique: i-rHwm3LMLWS7-WreKvWkA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EBEE81955D42
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 19:48:14 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DB5E81955D47; Mon, 15 Jul 2024 19:48:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D8AA71955D44
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 19:48:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 66764195609E
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 19:48:14 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-502-jM1gJ_DqNa2Jht1y-8wCYg-1; Mon, 15 Jul 2024 15:48:11 -0400
X-MC-Unique: jM1gJ_DqNa2Jht1y-8wCYg-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 3E29F21972
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 15:43:15 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 3608421971
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 15:43:15 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 94D4621970
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 15:43:14 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1sTRbM-0003hr-2E
	for blinux-list@redhat.com;
	Mon, 15 Jul 2024 09:43:12 -1000
Date: Mon, 15 Jul 2024 09:43:12 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: free hosting service (was: Re: how many Linux machines do you run?)
Message-ID: <20240715194312.ajktg4am4n4lb3sa@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
X-Pobox-Relay-ID: 79DBD244-42E2-11EF-9124-965B910A682E-04347428!pb-smtp2.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Karen Lewellen wrote:
> I have 54 gig of data in my main shellworld account alone, 6 gig for my
> personal website..cannot imagine another shared hosting service giving me
> that kind of room, but might be wrong.

I've been using freeshell.de for about 15 years. The admin
provides free accounts on a linux server. The current quota
is 20GB for home directory, 20GB for owncloud. I can't
guarantee it, but on request I received a larger quota.

The host, running ubuntu, is maintained by a friendly guy
who runs it on the side of his professional hosting
business. Also, the price is right :-) with donations
welcome. 

Wishing you happy hosting



-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

