Return-Path: <blinux-list+bncBC3NDNGRUAMRBJEC722QMGQEQH7H5II@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C03954F0A
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 18:41:10 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44fecb3dfd7sf1455731cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 09:41:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723826469; cv=pass;
        d=google.com; s=arc-20240605;
        b=F97jCFzqI5B7adglTEnvXdJvlESca9jo9vRBsv1hclP4Zr2Iay7TeSEKHb6X94Qx5n
         Xv2+vPikNJ3nX6hKt81FCq/UbUAuw+zTd93enXBSXAiYzLFqEHIKZSUFrT3V0o2i8Jpt
         6YKgj34Wg/3Z582FZrAJnnG0ELo/bJhj60CdyiIqSP/ICY7p6nf4bPYsfClKynt0BGCx
         BacCjec/hftjoZRE6W7CcalVabzuahqEBUPLl0bfLx+qpM5qy1W02z4ZJ5l40sulqyWX
         XX79loziDljLojzaXH5VAQ7s6auSrF56K2XpptdrG50H3PR0AzVkzlSTJztrnNWTJBUm
         6uuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=uE/I12P5saECePTcN7zJSBa3z+tIlsZmo/9sVEcqAeU=;
        fh=ZvVDOngrl5l53DI2fgxmr+37hj3mZkVvDRl42ulj72s=;
        b=KDSj6pTfnq+BSGVU/gUqj4sX8dmij4IhuQeUJ6nGQdJqh6BAocvCzahQBGwfT1SYVP
         ozqSOtqx0GJFId41te6JaTW5oJmMx5scZIkstUephCOOWyMQoiZoCqoD1ysHJmEI5PQR
         fRd+mka1No2NwcFvvQ7c1RvLRoohHT6ldth7bBqwsan+hLjEmN2iuLtxl4xPVU7xB3VV
         FRkrYT1CTzygSeI5I/jf0e4Ktf2jZDQYpTerS1cvG/ipq81Lpj3boTUHd3kUEfSHvosx
         mrvNa+7ndLKU6774H8edrz8YG5tjHqEp+s6ehZcJxsthBdHs0iOzNN5XPAXp/QIjUwBO
         wd1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723826469; x=1724431269;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uE/I12P5saECePTcN7zJSBa3z+tIlsZmo/9sVEcqAeU=;
        b=sP2yYF9j6ZSnOnNQr95EOIXe7Q4MNq/gglt1SRcEN1VdijWhA44SZlKteBAKHMZ4Gj
         kITnbDli93hZLYotUlZXrApIM/EoMTpx5KrnNjOz056JM/mrHVeW0YKlYmPYElDbjkmB
         eEC8PhAHNlw9uLGV8lvIuCxWHXBjYmkJ2Oeq0mSj70SiEOpu4IBUU66yfdybo+QomZ0m
         Ydwfb7HWvDoYcp/eOSWeM1cObXIa/iGEZ7jraB/MFko3zBP3iMYx1Wlxj+47yWEGYkDq
         RnTn78wiuFHX0NEOn2YqsmWkhbNU87gKRVghDQJC4evZmdGgiV0AHnBSwGP6Nd296Ghd
         iERA==
X-Forwarded-Encrypted: i=2; AJvYcCW5VlS0fA+LQ+Rt8BiOdjiLqKnFH6V1MyT8G+ZLrIG0NbSpjtiUJLCCKhS/aUMxo9sLTRcPHQ==@lfdr.de
X-Gm-Message-State: AOJu0YzTa0DgaPm5W+gBlEPreORvnkNtFAJM7Kk2EO7DCYg5I4kmTtuC
	Y8mVD6zdM3/xNwUHHP+paZM0GsABCXgrem03TWQUQuTjzhEQ5d5KzYBofuCQPFM=
X-Google-Smtp-Source: AGHT+IFjkdzS7hLLyph3rQ8yNDD7Uh7e2QcOPUlz+IiHpFSzftZl7ui1xNbptBcRfHComHp/AwZ1jg==
X-Received: by 2002:ac8:5786:0:b0:44f:d986:fe1e with SMTP id d75a77b69052e-453742cc3a1mr21909921cf.11.1723826468896;
        Fri, 16 Aug 2024 09:41:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1805:b0:447:f242:15e1 with SMTP id
 d75a77b69052e-4536745fad4ls30667031cf.1.-pod-prod-02-us; Fri, 16 Aug 2024
 09:41:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV73fNM8YrWIJbS+aUiaU9ER0V7VKiDvim4k5AOzCNoMnAlslcL8LavY2o4DKshgVm2jWNvA3z1MSBNWwn5aePclRbK8r65myWw4NiZ
X-Received: by 2002:a05:620a:1903:b0:79d:69b5:aaf7 with SMTP id af79cd13be357-7a506901858mr453687685a.11.1723826467963;
        Fri, 16 Aug 2024 09:41:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723826467; cv=none;
        d=google.com; s=arc-20160816;
        b=di6oH26BFFor6l7YEiNL1U7g8SOzVWxnSHIvTXHDReqvbIfhyk+LgQIOqPNpUV/qHB
         37u4c8d5Pj/i0guVxC7TLNuvCoYNio/4Icb4zMIYBBtmnSI9fTZFzCyh9FKLJTM+g1Uw
         7Z5J8v2HXeyE0NuC0qkZ6CIyS2KfkpA+506bUIQDewhMtykIetiDhb1eyVlrgLByo0HE
         a6hc3tHtdOi2OgpxjaBuDUds4g7RVuKJyvVQ5303xMBgTGGRPAC8p/f9Kd5VD2RgC2dp
         vwL/gxDlFtpELv/8ffC4EiUtjP9+ilyyt3gbPz3RqeDRuJYGmpzh4vlmckfOm4TQ/wgv
         Q2wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=45USD/9ICiRt67pR/LpgWml1AikJtu8hWweLvgwEpVA=;
        fh=9Dv6Z6dD2SHK0hZQVg3XWkYIpdSCLhKIBnntGXJKvTw=;
        b=jJ1Nl3kmwE2UbSZAbUzIYpgAf4XuvgYvGSJ5hL+wlGYx88FRsBPspIQVUszKCNn01Q
         ZJMBpuABTRI1bVPAIvmqt53Lc0LeJwSXnSnO9bAnaMe2IoV6Gkl4M31PXyTU7jjDFbsZ
         fu+lHSIJmmsbV5ottbOFUg/1e/ZoW9xuQ9I1L3Up7+55Rk+ZjFcqrzadrshgik2Gkt67
         EMyELJQkxXbc1LFWboTRvsRmVTfaMOwVCYk4c+ziIuNXphC4o7qiv0svt8x7mDxBGlFX
         bJ0ImGCy82lEiMXZh0FgGKWVw5He+HlvVUN+WxAdgMlYJnrk+RIfnY8n7yXZcNFr3vXf
         MfQQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff0b5233si436239685a.375.2024.08.16.09.41.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2024 09:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) client-ip=103.168.172.157;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-561-GSr0rMOLM9yA_gXx2BtgUQ-1; Fri,
 16 Aug 2024 12:41:06 -0400
X-MC-Unique: GSr0rMOLM9yA_gXx2BtgUQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C2EDC1955F67
	for <blinux-list@gapps.redhat.com>; Fri, 16 Aug 2024 16:41:05 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BD65F3001FEF; Fri, 16 Aug 2024 16:41:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BB0453001FEB
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 16:41:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2FC481955F67
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 16:41:05 +0000 (UTC)
Received: from fhigh6-smtp.messagingengine.com
 (fhigh6-smtp.messagingengine.com [103.168.172.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-158-HLvy0mUcMzSlMn-J88CSHw-1; Fri, 16 Aug 2024 12:41:02 -0400
X-MC-Unique: HLvy0mUcMzSlMn-J88CSHw-1
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal [10.202.2.41])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 5DEC61151A5B;
	Fri, 16 Aug 2024 12:41:02 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Fri, 16 Aug 2024 12:41:02 -0400
X-ME-Sender: <xms:HoG_ZuHDRO9qUgJ-nbVpmn4uNeumfBNs-YEODWA6MzqZW8e-yr-4Fw>
    <xme:HoG_ZvWopaHDX2fk_ScjTabOg3ZMTZmjHWXrnBKHGbWNtMrSJ4RpXZrXrMqfYWBEq
    XrH32U9IPcLEVGJ73s>
X-ME-Received: <xmr:HoG_ZoJmkdhVrV1fzaJnoObdfaMAQD8XT1IGqd_1gu-9GqIay557QDcCKdmQQnaLZcxrzDI0xbSIEURqkS0kqMBFSXVm7hryojk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtkedguddtudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvden
    ucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeei
    vdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgv
    hidrtghomhdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htohepjhgrshhonhesjhgrshhonhhjghifrdhnvghtpdhrtghpthhtohepkhhlvgifvghl
    lhgvnhesshhhvghllhifohhrlhgurdhnvghtpdhrtghpthhtohepsghlihhnuhigqdhlih
    hsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:HoG_ZoHdvFi5uFj4N60pVl27KI2bHy1KKLT0SZDnrQSW8AOi41gejQ>
    <xmx:HoG_ZkX6m8QBcUT7AzqI0VdzUGaSAaasVU0Bh-GcZn3tiMDb2tQdHw>
    <xmx:HoG_ZrMpxucIiVvviNoJNcJQcGj0PlnoEHTPcrvxMWipL6WmrJaLVQ>
    <xmx:HoG_Zr0keNZQtxZeBCHnZ3Rk7-4deML5qfdDLktwo9VEMW52-Z5TiA>
    <xmx:HoG_ZrTy-A1XTwyLvIsPcCmY7DtB4VGVAUdcG9LWcjHKgh5phRBS9Dug>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 16 Aug 2024 12:41:01 -0400 (EDT)
Date: Fri, 16 Aug 2024 09:41:00 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: Karen Lewellen <klewellen@shellworld.net>, blinux-list@redhat.com
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
In-Reply-To: <201b83f7-db4f-40b5-8d39-47446231d9d8@jasonjgw.net>
Message-ID: <3a787c3f-82d5-a05d-29ba-5ae661c081d6@hubert-humphrey.com>
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com> <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it> <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com> <2c9cf472-2d34-4b2e-b1c4-0c71f0a99e08@jasonjgw.net> <be01736a-fac7-4689-9054-c4bc6d314014@jasonjgw.net>
 <Pine.LNX.4.64.2408152108400.85960@users.shellworld.net> <201b83f7-db4f-40b5-8d39-47446231d9d8@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted
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

Well, Jason, I would say, basicly you provide fine advice, but maybe your style 
can seem harsh at times, although not today. I tried Arch with Fenrir with lots 
of asistance from Storm. Since I am constantly in Alpine reading mail, Fenrir 
was a challenge as it was interrupting or skipping portions of screen. Even 
though I joined an Arch list, I still couldn't really understand differences 
amont yay and pacman. Folks on an Arch list find Arch easier to understand than 
Debian dpkg verses aptMaybe you are right, Debian testing would be better for 
me, but still packages mygrate from SID after 10days. I was advised not to mix 
packages among Testing-and-SID. Arch certainly has many more packages, if only 
I could be able to grab while in Debian? An alien concept of converting an rpm 
to a .deb would be interesting. I know there is makedeb but we cannot get it 
working Anyway, thanks for listening
. 
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

