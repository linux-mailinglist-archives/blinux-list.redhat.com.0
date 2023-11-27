Return-Path: <blinux-list+bncBC3NDNGRUAMRB4O2SOVQMGQEBG7P4DY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id C096B7FAA41
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 20:26:42 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-67a1904ee33sf43792126d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 11:26:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701113202; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xe46cF1QPd5U3knYamzy5zmnCjjFKpgtwUbLHZLLUm35CbhDVU2T1Dx8iDQDz6kCpE
         prAOgEAnNjlTDqstTV8jxsljTzqThTDu/qXUfaZ5MIHIkW5kXZC0ADZrMz+NfgIMa3UJ
         RdBISccl1UjEoJ+yY3ezXgrQJl+w3C0m5wVwm2MiBW9c4PVUZ3/dit0R25xcvRjPrI6b
         MlqAtZUd1Yg/uTIscKjgULTv5H82h9ayL1dduwxLsqItDee3xkSk/bbcKoSfOHlxKJGk
         vDaO2V4ch1ri84TsvukguULHVxHlfPKn/rpKt+nQeTP//2bjjkW+eHpdOWrqSdn9bIUL
         EVCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=PladcyoPtdMCuR8hMjgzwVYz8h7Wpb9E2Qf99L5joOk=;
        fh=Lbw4+ql6XP+H34uepzevrHJVp22evAnhWnGyWIJSMuM=;
        b=OQ/IVj6W8NoQGHIrP6R0Dqyi+r2qH5fPuJYpq9xKn4jmzbFp3CXcjdsChrrItfnjfS
         1fyo/46T6FkzgO6/skw44+TFewrmmaDXS/v+17ub7Jp35H3a4/KvAPjuXnzv2zpIt12P
         EL/mAbnPqVcL20ro2LCs5Wu5ojZJXA1k4T/ci+7MZPWqSvcXBQf92qaqjGNA8Td/Hp7V
         SHZjvICPmDd5jlIFvoOxFQbnw264gdw11YGD/AgIGtnerB4eNvIPUL3onJelajEHDfOk
         jr9U/dcG17cgg/MYOYxgZYAELjj6LvPIQnkd4TvKL6ub55IN3OGCJ0FVYJHpHuAN0BJz
         n8tQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701113202; x=1701718002;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PladcyoPtdMCuR8hMjgzwVYz8h7Wpb9E2Qf99L5joOk=;
        b=XK/sSg9/iejrNvD1z7x7Rw8IxVigopQUscZYst8bUNCrugdOdz2BuOXoJK+hpSzJAh
         sUK20otwJEKZGGk6T+x+yhNphrUeK0Mkewanc45jGrJ7Wuh5i8cxpALe6oeFVlFN/sVb
         iZZNoTlyLYYUUfSoJGxUQopDoT49wiwi0VN7rxcQpiA+KRnzIGQFf/6WlZIRGIAkk28I
         1vc+7B/t/+yzaaL7urVrDJgD5FXbfoM4Q5oh2IiC1YkI0sB/cNPMn/IbmnQAeCBu1E+U
         jMy883xqwQg5q2rk1o6lTwsrfQ+VdjbVjy55IW7QyDlmIlcPrCBJAAG8sNS3BSTmf4OE
         eMDA==
X-Gm-Message-State: AOJu0YxiVzXSWLfM2phT9fZP/QpzO8LMQBzoiViTP2pTcWN/K3zlgP1E
	Rwt7/W+X38QfZwSNRaAmICJUsQ==
X-Google-Smtp-Source: AGHT+IHTeON90TFQT6zKbJVbtMfLt6Wo2x64+1M3XjJe1OTAsoO4g0QvyZ0IaEkZdpI76dy4eotbrw==
X-Received: by 2002:ad4:4d86:0:b0:679:d41a:69e4 with SMTP id cv6-20020ad44d86000000b00679d41a69e4mr13196190qvb.4.1701113201763;
        Mon, 27 Nov 2023 11:26:41 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:ee45:0:b0:65d:b9b:f30e with SMTP id m5-20020a0cee45000000b0065d0b9bf30els5029763qvs.0.-pod-prod-03-us;
 Mon, 27 Nov 2023 11:26:41 -0800 (PST)
X-Received: by 2002:a0c:ef46:0:b0:67a:3852:2896 with SMTP id t6-20020a0cef46000000b0067a38522896mr6227229qvs.42.1701113201022;
        Mon, 27 Nov 2023 11:26:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701113201; cv=none;
        d=google.com; s=arc-20160816;
        b=MaimUcBUpkYvk8hPy3z5eSoVZ5LFe0ZRNO5LZeXG5KHDaYSWEjmGzSHJsk5E2Je26y
         WMmIPnglCfufFXJcsY8QXoRmPhiGX79/ea4DBb8hcfYWJ/xiKQepD6Tz5DMCuUWi5b5F
         Q0d268kHCgdFrE/7N+bqUwM12b/VMpyO+BSKF+3TCVa9OiXz/7BJBfub6ma52PzIdBn1
         0C5lGeU//QxP0kgBxf5hqPM4CZ3Nll+dwaAJP1cn6Nj+EJBRZC23dSpBQFAttS5NsOuy
         DsBPl/nU0CMo/Lsv36xq9zJTM84RDi9jkZZP7glyRjfy9YRwG3PU6gN1QXxIZFNc8doP
         yFgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=cCh2Jhei7YcPs0UIhbEpT8ao4HOqDI4rGqOP8WqKsuo=;
        fh=Lbw4+ql6XP+H34uepzevrHJVp22evAnhWnGyWIJSMuM=;
        b=XDtupRoHzGC6VkRuUUCYPKz4L4r4HVharjps/fEF7G1/g6BSunSWjriiN+rqhAJWrw
         lXF1HG/MsYzBeMquvtxpbEg4sVl8NVxUGBtYBkCsGjdnHnuhLs/zHrbkJSI0wMAvcck7
         VyMSa88ob0p+jL98jjykkqkmUo9Nr4SW++wFrxSXeK3kTi7AF7spfmZtGNC9F+3DPwGc
         gmiZYPMiFutZALKBejJDqfRqYXxs63+1Cj8dWm3UDKnxYYcw1D4msM3bvUjzDJACDfS8
         leK91tGZVd4o8612Cm3NM6xDC1yCXzYaD4tdJdCFMt+mro+E9jCMmuOqTgkJ9JC5wu8O
         y2vA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id o9-20020a0562140e4900b0067a20fecc69si7076007qvc.583.2023.11.27.11.26.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 11:26:40 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) client-ip=64.147.123.20;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-371-bmrc3ajzOqi-wcN7BTYznw-1; Mon,
 27 Nov 2023 14:26:39 -0500
X-MC-Unique: bmrc3ajzOqi-wcN7BTYznw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3729F1C0DB01
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 19:26:39 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 33752492BEF; Mon, 27 Nov 2023 19:26:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B3F5492BE9
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 19:26:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0610F380606F
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 19:26:39 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
 (wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com with
 ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-390-3dE8PV9QNWqwQXVl_VJVpQ-1; Mon, 27 Nov 2023 14:26:36 -0500
X-MC-Unique: 3dE8PV9QNWqwQXVl_VJVpQ-1
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.west.internal (Postfix) with ESMTP id A01523200ADC;
	Mon, 27 Nov 2023 14:26:34 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Mon, 27 Nov 2023 14:26:35 -0500
X-ME-Sender: <xms:ae1kZa-YxNO3CFGrqU4ozUPSN3rF6ZhUMVX2Pgrht01ZG9P8WAEEKA>
    <xme:ae1kZatYLJe4KMTpKbzwGXNj1HKXnau90hWQQcipcqdiWsoo7DudoJQzQAVncBrhq
    uQyQVMQFUDyxgGCt6A>
X-ME-Received: <xmr:ae1kZQC7jzS6wJ9OZ_dQfBzEUuQLHb4sCv8HDzYudN7lU7N7I9e-7UQVbRGYSWA0Rar-LpAhgrV8oTJfOmJ14sgq7jlT64j1_g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:ae1kZScLGCzTPD_iYJl0q5CO5wGzppJQpiPm7FhqVro-x1jKsJnfpg>
    <xmx:ae1kZfONebarN8eU5V-Nw_WHb6q9iKjKEVlK8LP13mAshCTBbhS1Bg>
    <xmx:ae1kZcleNP4OXqODo3AFUWbQfeYK7vdRSeYuwLKXr4wDzhomPBWaGw>
    <xmx:au1kZYZGvzKi_nKq8cnwQIBn0GK9_0kmtCZt4r4EVbxx4sHunKt0Rw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 14:26:33 -0500 (EST)
Date: Mon, 27 Nov 2023 11:26:30 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: "Jason J.G. White" <jason@jasonjgw.net>, Chevelle <cstrobel@crosslink.net>, 
    Blinux Discussion List <blinux-list@redhat.com>
Subject: Re: EmacSpeak Won't Compile
In-Reply-To: <5fa24196-30ce-58b3-b0ee-4cfe44f7f685@panix.com>
Message-ID: <48685e33-1339-943a-55af-0ba79b09c3d8@hubert-humphrey.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com> <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net> <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net> <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
 <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com> <866f9548-1084-5352-608a-030d30c6a8b8@panix.com> <c8852aae-ea60-49e6-b73d-6a6438fcaf2d@jasonjgw.net> <5fa24196-30ce-58b3-b0ee-4cfe44f7f685@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted
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

Hi Jude: What I did as I may not be exactly setup for sending reports through 
fastmail, I saw an address of where the report would go-and-sent along the file 
of the report. I know they got it, as it added to the September report.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

