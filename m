Return-Path: <blinux-list+bncBCRJ7NN7ZUGRB2NF4SUQMGQE5BDPS6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 553E67D6CAE
	for <lists+blinux-list@lfdr.de>; Wed, 25 Oct 2023 15:06:51 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41b0f770312sf70435141cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 25 Oct 2023 06:06:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698239210; cv=pass;
        d=google.com; s=arc-20160816;
        b=cqpcpmZ2os5z1ERCWKW3pgXUjFitnGddrunBgIktOMvgvk2JHLgROLBdWq7Gl2FCSJ
         Ko8WHu3/Q+JMCRLMMSI1zmIzq5fqwU0NR08iyy6T9Z/1QniXHNt/iEeOc7yU10JuSICs
         5ueV7+JTwQwh42F/pjhhKg5so2KnGShS5BqfJcIGRfH+dV2VyCrYHt3BiVCqv1qYg/4P
         QCaf8UQRbfnEwUmqbI+kffBeWumQ9LuWsF4cP1ZB2ptUZ/H0ZzMpKp86R8y7vlF3gsKd
         mhwOr0Yx/3XQICDcr2tNzSxMM5eU+ABT6WsITvt37URCh41viYzyZsknKtIHrS8HLlCi
         eA8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:date:from:message-id:references
         :in-reply-to:subject:to:delivered-to:mime-version;
        bh=VLlTyqLJMn+WPZOmSwzCaztA8lMRpVgqSD3r4EopPrQ=;
        fh=4iJgjbk5c8Yo+TvvmqZqWc+AmoMLBhpAT3xl9GN/VAU=;
        b=wZhp1wEzvNj64DSd+oTkiC0yDymzxSpQul8x+FTVinJsjll+BC7NowhnMtgF8iTOkS
         rTBziwwx8itepdR5zex6twMFjhbaD3jxI9J1Jwb2xexKhRDnLu85IHMFySS/sIIHWDsE
         u0+STvA7+BJLaPWmDTHZHLT2oAYvWZqGKRilFUWBQ6+gX2qUVSGaR6ovuFwV6J+PuExl
         qgb4rCr6E5oVmDwZNuWvSbxWD4JCz/xgyCd+zZ4Irxdre/NNAjHJCuRIl/w3MUmsnPYs
         F4VKtgJw1SNu4SNq20Drxrw4WFfgR6yw1V0DGz3CKBqDqmRjVw65xBlXRbuel/ixR88u
         5+Pg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698239210; x=1698844010;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:date:from
         :message-id:references:in-reply-to:subject:to:delivered-to
         :x-beenthere:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLlTyqLJMn+WPZOmSwzCaztA8lMRpVgqSD3r4EopPrQ=;
        b=mdtIC307TtLUEFqSYBBbeUdz/oPYtoitO59MV6c15CGGYRe4shJJ84bpjlUpkxcQRh
         FRE2BUjQBkmhwjHuW8zDOAkSsvAkXEaucq5arpk6bQjM9MoPSOP6Vxw22Fiw27degDEE
         cjw5sJ/tdyYt2dgbIrRACm+tSQ4Mz1Bg1elPp/3MTHpBYl4HQqx6gQRcKcGrJYsbOe2z
         7RRpX0DrLsGmeRUxHL1KTU7tMNOQfUaReeodv/wo9zEtKYZptbvm5crEX+82Iq6XTsmv
         mFBPvxr/cgxbTVHUqNIsisraKj5ZEmO7f7MwRIiG/tpOJKfC/18byjqg6wjk/jR0b8FC
         Qokw==
X-Gm-Message-State: AOJu0Yy8AxCCqMufpah0y6AKhRAE87nnOBpuoMGYBSeXso6wFLrqjIWU
	f5HfcrmuqamiCEwRAwPDk2L8ag==
X-Google-Smtp-Source: AGHT+IEFArYHBYUCcflBqU7ZZ8p+eJXlRZiBE/gdurVCd6KVJB13UodvjF/uX8pXnVfOwVxZa2OJJg==
X-Received: by 2002:ac8:5c47:0:b0:419:529e:dcfd with SMTP id j7-20020ac85c47000000b00419529edcfdmr16204276qtj.3.1698239209736;
        Wed, 25 Oct 2023 06:06:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:5103:b0:41c:c118:e752 with SMTP id
 ev3-20020a05622a510300b0041cc118e752ls1813341qtb.2.-pod-prod-05-us; Wed, 25
 Oct 2023 06:06:49 -0700 (PDT)
X-Received: by 2002:ac8:5bcf:0:b0:41c:b99b:4d75 with SMTP id b15-20020ac85bcf000000b0041cb99b4d75mr15506577qtb.11.1698239208982;
        Wed, 25 Oct 2023 06:06:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698239208; cv=none;
        d=google.com; s=arc-20160816;
        b=QQ5P7akxWgyz8K3MaE47Mh0KkIBEHCKzgmX1ES9Yxry9Ie8cq/li6gFVMXR/QEjXQN
         CQDTxGCcnLiJerO7+8kD8ajsP3+KxZ5dGhPM9nS6Fxu+7bJgtA+RoghmrZILbcWny3GM
         XJ7s5K4cti4y7LKmtyhIcdZ7VxheFlSMoGT/vOBJ+5bR2D2fRLgg2FLdIvlRa863UA2i
         rkjtYzS6V1W/Xc/tVKSC4PcAM5n8Sbw040ur6nbSNkFAzXqK+1HQDmJVAf3U8BIxyfaI
         2QH5jw6io48iPQoc7kqWcYJOUaPBtUO/ITMTQe2FgtljM2YbWr7qQzM5DsSuhkpZLenu
         s9tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:from:message-id:references:in-reply-to:subject:to:delivered-to;
        bh=uqREyPIrAvNkzUPXCl3l8jkVRXZwJBtQWxhW/PwQt/8=;
        fh=4iJgjbk5c8Yo+TvvmqZqWc+AmoMLBhpAT3xl9GN/VAU=;
        b=c9M+0g1/C0GDSpfO9z0ZI4YhfSuWomdmc3WBf9nfkOJl+vTpJGfIWlGyVOAwJCsfuV
         UnLWuoMmiKMF5dkS7nqtDf3+OJd0lf2Af8N602BLf3ole6gAB4+OKuripZLDmVLtq8EH
         5CldlbKBtcUpI6KUUxFEE9z2eeQb3RQ2xGZ8I1WpwrSzNgniu7sqwPFwB3GLxVFIOtPv
         iag+dZCYsXz5UTWl2aUMs0dKVasqnA+aMbVa6Ut1q3pRy7n6UJ3PtVGcjWyzOJiSlcc+
         HOlekbawJp2huU6w39njLwYnDOjjwm2Bqg0F3h4jfgSUpqPYKI3qRv9AiYfGiOqlI+dO
         R8AQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id 4-20020ac84e84000000b00417c080666dsi8453266qtp.37.2023.10.25.06.06.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 06:06:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) client-ip=80.241.56.171;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-679-KuZKQgisMLSOTEDsM1oBTQ-1; Wed,
 25 Oct 2023 09:06:47 -0400
X-MC-Unique: KuZKQgisMLSOTEDsM1oBTQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 845D43821342
	for <blinux-list@gapps.redhat.com>; Wed, 25 Oct 2023 13:06:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 80B761121320; Wed, 25 Oct 2023 13:06:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77BED1121319
	for <blinux-list@redhat.com>; Wed, 25 Oct 2023 13:06:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 557E72800501
	for <blinux-list@redhat.com>; Wed, 25 Oct 2023 13:06:46 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org
 [80.241.56.171]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-5-6nClLT95PSKEhYrZaS6d_g-1; Wed, 25 Oct 2023 09:06:44 -0400
X-MC-Unique: 6nClLT95PSKEhYrZaS6d_g-1
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4SFq2914dyz9sZG
	for <blinux-list@redhat.com>; Wed, 25 Oct 2023 15:06:41 +0200 (CEST)
To: <blinux-list@redhat.com>
Subject: Re: Very minimal graphical environment
In-Reply-To: Your message of Fri, 6 Oct 2023 11:32:35 +0100
	<mailman.1765.1696588366.2981447.blinux-list@redhat.com>
References: <mailman.1669.1696587735.2981449.blinux-list@redhat.com> <mailman.1765.1696588366.2981447.blinux-list@redhat.com>
Message-Id: <E1qvdap-002XyM-OR@locust>
From: "'Artur Rutkowski' via blinux-list@redhat.com" <blinux-list@redhat.com>
Date: Wed, 25 Oct 2023 15:06:39 +0200
X-MBO-RS-ID: 05cbf555085f99df13c
X-MBO-RS-META: xrngtubm1n9fcqys7i4equ8p4zuiszjp
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 2
X-Mimecast-Originator: mailbox.org
Content-Type: text/plain; charset="UTF-8"; x-default=true
X-Original-Sender: locust@mailbox.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of locust@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Original-From: Artur Rutkowski <locust@mailbox.org>
Reply-To: Artur Rutkowski <locust@mailbox.org>
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

Thank you everyone for your recommendations. I installed I3, orca,
gnome-terminal (because xterm and similar are inaccessible for orca)
and chromium web browser. After configuring the I3 it works perfectly
and it is so minimal as it was said here. I am very satisfied to have such
minimal graphical environment. The Linux and I3 rules!

Artur

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

