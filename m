Return-Path: <blinux-list+bncBC3NDNGRUAMRB3GUSKVQMGQE5NSIOZQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id D933E7FA31D
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 15:40:47 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4220d84cc86sf1458481cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 06:40:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701096047; cv=pass;
        d=google.com; s=arc-20160816;
        b=GNGfs67Raqym9IVG05pnT8T7EB9T2K8AVc7q45Arydzgz5cDkTYww4ILk0Nd6VTqZ3
         nMDqjwM6rojw/oV4QXOqo8nnuRzFD5kK7dBhNC0isl6s+OJw1xWAP6yBBYxFNdb/DnDD
         tdQB4mh2wlQNYQjca8OlLxFdNHH2dYarlqX0vC0A2rRFZGReRSrwhpO6jW+R1WsMciXB
         rcFvy3nf0fAVUXTX+4hejSOSvVkURbMH8taC5fba1qjvt0C4zM7EDmVfRVy85/xbJJ4J
         zyi41QZqZlSwhQSQxQuJ+7rzhNXmq4FodwATpdWI535FT0MFS4OUkqyy+GmTap+gCX5x
         APtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=cX0q0wKX43y4E7Mm2yr4/WDazV41ThbVTi1qVkh9Phk=;
        fh=7e/pil/dPYIfd14RC7sE9wSOyZhgfUDh+lLhllIlV2Y=;
        b=RHgSVQftMZ2l4Ac0aCBvar812GS7D1mbvAmm0N1Pw5zUQckNJksieWAeGpmYt3V+G7
         Xn4xlrL6c0Pnv6ZAgIsDY1Iu9ta2yc4aqByZPi5cooLyMXvq1UR8JK6cL+Y1UsVDsQ4N
         8IHsMU/X7vPmrm0TjdtusIhAa0+RoSc/TV5y6HWgdaN0+FRoTJa6+e/kkM1mh/H2kSKl
         wAXMEk+IRIx8N1/AXTwOBPb3n9TvqcDRKqCOfgVmDiiwvdg29hOhUMPB+q452kYPfYlC
         KEAj+tezeXnfUVc+Hgq0yyhYTNmBIf5/5xBHDEAgDtLXpc+xsxnsiQ6cph3h/Eo8qTu7
         4y+w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.21 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701096047; x=1701700847;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cX0q0wKX43y4E7Mm2yr4/WDazV41ThbVTi1qVkh9Phk=;
        b=EkBjIRx18VQKXkvYgJuucxDv8eaHZ8USKTVQt8VShyfdFKV/Mv7tm99td118JQm6Qw
         U753zGqniPbY8dkbvgSkQpX1U0M8+uPmnmqVAL+JEvQbLXxYAxm2c2OKtYEVbcBtj0vg
         Kqd9tFWzpzTpp+onOcQzMm0QLBvgX6/nspVzJpTL5HVzHr9TafQpOF6zYxk8xWd9sPch
         4hN9T+k5J5nI/Z4zn7iH5or5JBAJpCCLnoRoJPdp1nTGUPmIF6FpbxYxqfzr0HTN3MNQ
         wlE0mG9WFHxLUoslNe+yzC6psH+d3fRd9k6eybxb2mhtOt9LhGSRrYhLKhdkBH3J/gXI
         Tcbw==
X-Gm-Message-State: AOJu0Yzg9Qjc5G98W8klB1YcuEFPkP6wtI3ysnnNVNeSSKZxdSnSiF2M
	GrnD2/f+rNxMrzou8lYuQvQ0Eg==
X-Google-Smtp-Source: AGHT+IGoLpMqEqo+DzVP7APrNKEoaL+Yo5rxvN6/aWgYGFVEKN8dm6QSB3EmOsnEH45wIwRurOQ7GA==
X-Received: by 2002:a05:622a:6f11:b0:423:8e6a:f7c with SMTP id iv17-20020a05622a6f1100b004238e6a0f7cmr476429qtb.26.1701096045254;
        Mon, 27 Nov 2023 06:40:45 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:450a:0:b0:67a:3dd6:779e with SMTP id k10-20020ad4450a000000b0067a3dd6779els114625qvu.2.-pod-prod-09-us;
 Mon, 27 Nov 2023 06:40:44 -0800 (PST)
X-Received: by 2002:a0c:f089:0:b0:670:fa29:eb51 with SMTP id g9-20020a0cf089000000b00670fa29eb51mr13824893qvk.12.1701096044346;
        Mon, 27 Nov 2023 06:40:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701096044; cv=none;
        d=google.com; s=arc-20160816;
        b=w/PpH4TFTkxc7/rxMVvRnopCB0A43KAs60XEbZt/f2+71pgV+g2sYxaGJ5xStE3xt5
         uLj/V2zWp9HTb0h9Y4cTixG47YYM0Kk0ETy6pbSlw8dwO1lSGr3w+onv5cmn893yDvJW
         7HYFcjR+gwTQAiKb7+TLBXmxdj2S3orSuIKl7nmMryYTCFh6ERSI6/KXYVDnrgFtiiFp
         mgFnXzLe7UQVsY1iiD5YSzTawuHmB5Zo6+eXq/lrcYlmDgFrEjep1OMCkF2pa6ovMrLZ
         5jIqhIXuWw27lWG99D8ei08U0GCgb7m8Js/eHiAgA9jKDOy8wP8LhRD6QE5sfB0wJRFX
         mfMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=88pHX33al6/n5iTOdADTmTx0O0k8UK7gi8JjqaxGU4E=;
        fh=7e/pil/dPYIfd14RC7sE9wSOyZhgfUDh+lLhllIlV2Y=;
        b=pcestSQGkIiv03qlEJE2AMUM01/Hg2StZ2+vA73id3q8QjFOkN0vaZioLxnSwL1i++
         NsCKH4wDVQQ/wNjtfree1MYnYQTV85THzVDZgBIf/CUjxqPunrAGLEfMQi3u3xE4D55c
         AOLr/hw2a+7lO+WHCs83r/1Y9UwTHkfkrrlD5uj2Xbn1jqzAZxL2lmVSI1LWwd7k4io0
         6g9J6Phi/Mk1tDBwv5NEIb1/dLt+en1syp54wZwBHU5vUgCfbAfRwUaK/nAwui1Pgl2s
         sPb7XbaHmoaGEGYgfQHO1KiwL4lEtdnNcNDl7gsmdsGppDekv+gr3CMsz1ieSMFVb+SK
         WKdg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.21 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id eu13-20020ad44f4d000000b00653589bac4fsi9399938qvb.48.2023.11.27.06.40.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 06:40:44 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.21 as permitted sender) client-ip=64.147.123.21;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-FZK9VWCyPV2GELbhk05IIQ-1; Mon, 27 Nov 2023 09:40:43 -0500
X-MC-Unique: FZK9VWCyPV2GELbhk05IIQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9FB3811E82
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 14:40:42 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B6BB440C6EBB; Mon, 27 Nov 2023 14:40:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B001540C6EBC
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 14:40:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85D04866DCC
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 14:40:42 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
 (wout5-smtp.messagingengine.com [64.147.123.21]) by relay.mimecast.com with
 ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-367-uTevCJAUPTm3aloCczyQsA-1; Mon, 27 Nov 2023 09:40:40 -0500
X-MC-Unique: uTevCJAUPTm3aloCczyQsA-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id 9F90F3200B28;
	Mon, 27 Nov 2023 09:40:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 27 Nov 2023 09:40:37 -0500
X-ME-Sender: <xms:ZKpkZbGvQHYMTspIKkX_LJSj-zUK_3AS8oAjJ1MOAMgZmJRjXeXyNQ>
    <xme:ZKpkZYXwhTSdSraEaaVz2XEa4wHeCBT43McrhRHNbQiWQQ_oM9ld0cwRDhvpOTP2S
    UX84NwAHSyKpLWjAZg>
X-ME-Received: <xmr:ZKpkZdI-G7tBn_OoV0GGEw_N_zTOcyXHkHkUNm2qAqZS0zaVC_mIchqBDhDI6OP5wYLFPV9M8ywkebIBzZFtqVQAFkyIStLLNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgieekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ZKpkZZHXhW-GYbjJnV2Pnr-IXWNtPk7-NLE5yiut4P8t7EMMmv8TEA>
    <xmx:ZKpkZRXTmG-0sfFifHLEopud1niaHCYergL-4INTvlSxwLc2BMOZ3g>
    <xmx:ZKpkZUNa-R_OwQDKBWK_Y_zsL_HEdLgOFosr5h2DU5l0qXIVU9QFNw>
    <xmx:ZapkZQfkb9OaGuyBvofmIpIgWyBIi3-J5UWnRTDkLt2V76RmqKKg7g>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 09:40:36 -0500 (EST)
Date: Mon, 27 Nov 2023 06:40:33 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Chevelle <cstrobel@crosslink.net>
cc: "Jason J.G. White" <jason@jasonjgw.net>, 
    Blinux Discussion List <blinux-list@redhat.com>
Subject: Re: EmacSpeak Won't Compile
In-Reply-To: <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
Message-ID: <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com> <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net> <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net> <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.21 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Thank you, I did add to a report bug item filed in September. Its rather 
amazing that more than 2 months have gone by-and-this is still happening. 
Thanks for your analysis
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

