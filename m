Return-Path: <blinux-list+bncBC3NDNGRUAMRB2M2RWVQMGQEVC6V5PQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ECD7F92E0
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 14:51:39 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1fa2c79d9adsf1093949fac.3
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 05:51:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701006698; cv=pass;
        d=google.com; s=arc-20160816;
        b=kgAfSzRpP/tyUzNpHcmfu035xlC0XEnzGANlfRbItmyzYQoP1H+HN5o5U6KF/3QDSf
         NOkyUQ7GWhuOVu+Gu/NNAn9YNx1hwSHkejKTnLTGMlBurTMyZ1IPad7USlOe3S+BWn+B
         flLNd8sQfsia0hRw/x7F1F7T5/Q1viYxHKsWgMOOs9/j2f8btjsvyMLnfJ7/tSVY0tNP
         UNld4C8sLxfbKzBKOD7BBMLWp6mTYu+FqjTlK1uTU/yyPk0g2igjomMkad8USRaYYS0W
         GxDvNF/CfDdyfArBalZfbXc0c8SEVgWKVxMDZiUaDvQ9pNtee4YElff1LPgapONtXETO
         cNIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=EIkHZTXL6PxSkl/Mna2acBggphLgal5Tpv4GP5sDM40=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=nCf0HHt54yPeNQSFuaqaT+uApW4eAFUff9uHbgU0Xw1E31zqkQ/Z3goRPh7P1n9gWZ
         u99W2Ntj70XCyrjPk4XPm/iNlDpVsEojvZRy9tNOc0rX3tRxMg8rW8l4TDAY5vRhpAAf
         8j63qbw9o+io2FsqKpMqxiZqpQmoRATBuXK6TpyfgYGkTdCnArU/mkflnaa7t1TbMRzx
         gnOOiBmEG2h7qPZi1vwF/KVBzEavShp0+oURgITaXpCfYNkp+ClhjWA+0a9G9hZlFoIG
         siqqgDESAyWqUuoK+8IX1/DIB++sbGd1GzGpGGp102D7A3imGz8pZ4E8ZKlFfxTc8CgH
         +B1w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701006698; x=1701611498;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EIkHZTXL6PxSkl/Mna2acBggphLgal5Tpv4GP5sDM40=;
        b=utxIyyaKLRYA9iD93X+uH6yYuCJgpxC+ZionzaOLYTSBs2wq3dBadnjX4ON4roNDIR
         mX815NK43f0AmbGQeSh+lxVkwpRYmW2u9fPu4heOcARDdwD9kgHk8fPd0L6BAQ64eol+
         IGMQV0r1I/+wJAJ1iQo72upMwveGwpYFsh2Zq4FdPh/tuA309PVKB4YkXhc8q8+bHrWh
         yhe8hJqPW6hRPr6G4qsskt7cOTTwu/mHVyhdUkP2wLAeElKZ4AEa40sty6p6+W80NSN6
         wcGexDRUtnq2gfuAVqFdb8Llb43SWkJsLpTHwR08sYvJ6lYTkQNsiDsaZ6346MSlFSjG
         jsxw==
X-Gm-Message-State: AOJu0YznB7KQ93h8GR2jS985NLlVjL05hLFSQO6yaw/3UfTrBBhUCkLB
	wsd3zXkcHoicYk+IIcFIsFDn8A==
X-Google-Smtp-Source: AGHT+IFeNYBAe4QiKQYK+r2KhSAqPvJ/s133JnFV4Cn3em4gdW3BMq3XEldJpKiULnmNMXwnDGJENQ==
X-Received: by 2002:a05:6870:9605:b0:1fa:16f4:7f3f with SMTP id d5-20020a056870960500b001fa16f47f3fmr4850320oaq.43.1701006698002;
        Sun, 26 Nov 2023 05:51:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:819b:b0:1fa:26ce:7c1b with SMTP id
 k27-20020a056870819b00b001fa26ce7c1bls301861oae.1.-pod-prod-04-us; Sun, 26
 Nov 2023 05:51:37 -0800 (PST)
X-Received: by 2002:a05:6870:6b07:b0:1fa:cdc:2832 with SMTP id mt7-20020a0568706b0700b001fa0cdc2832mr6065031oab.13.1701006697283;
        Sun, 26 Nov 2023 05:51:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701006697; cv=none;
        d=google.com; s=arc-20160816;
        b=WRTm7juIPv3c7eyDR9/mWj7feSGXcRfmCuBl8S7jbayyLIACMGJqnovdytQ2GfTXy3
         1qe6UsbJDzSzITv/tMHeYwjMvGDQp5X1ZrfqqSqwLEXKfb8ffnKZ8QYaYZXoHBKycIjz
         iyrMVIjdlvz2FkNH3uszsJo58t0H6stVTAfdVxseS4nVZEyK6lm/1UZ/y59zpnYuieuC
         B3WZ7EpKW4nms5upD/cFExaeBdmyXMuuzkzc+V3JRCcY84Oet1xTxmdCytTMAS0zy5PH
         0XPAcp9fnSLrfuFqUVDcxaIx696iO6UPSQI4Qq2i2BoHaaGs8qWl4TOMC7Hg3lehzTpQ
         Yuig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=NxRm1MW0MQMHBchQnUMpmwGu8CqujCUgpNT2jXVPIZQ=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=dJHmfxWgzlgU9FjZO+QCtFgeSU83VQnaWPFtaZeo6sX8e3QEUni/FXBn2U3GbwrOcR
         jSdaKv1N8k3xiwwplFQrdL2MNaQ2n2/z9VQmqQfg3WL72cDigO3z7dI5N0mjQSMIZ0gA
         BR0qtyOH7THi5GDWZ8D+ywVs6RBpZ84U2mrDFO5cfaHJt2u2OJK/D357xvP9z54ViCcI
         H3mte3LlAaLlSZkP9wmNTkHhC+ptG3cQyNGQ7vGdi3qAIf4YNeyYnc5Od9vwvGvkkmak
         BhwJNsY5D90bTqG/glEHjIpB+DSrCa+3r/5BsBXkxv5SQcctJt6ii3wIFDN0afXq3NO8
         YLtQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id bi21-20020a05620a319500b0077d7d0e8d01si5754690qkb.654.2023.11.26.05.51.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 05:51:37 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) client-ip=64.147.123.20;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-287-C6FqVo-jPj-6UWmZYTLp1g-1; Sun, 26 Nov 2023 08:51:35 -0500
X-MC-Unique: C6FqVo-jPj-6UWmZYTLp1g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95E6985A5BD
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 13:51:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 92A7040C6EBB; Sun, 26 Nov 2023 13:51:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AB4D40C6EB9
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 13:51:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6828A101A529
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 13:51:35 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
 (wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com with
 ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-388-ia5ie4g4OQ-goWmQ8vfVAQ-1; Sun, 26 Nov 2023 08:51:33 -0500
X-MC-Unique: ia5ie4g4OQ-goWmQ8vfVAQ-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id C058A3200495;
	Sun, 26 Nov 2023 08:51:31 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sun, 26 Nov 2023 08:51:31 -0500
X-ME-Sender: <xms:Y01jZWeFaQ7n9pfavsnitsamZ1Z9MpzJmUV8cWNs613Wjvwnlh7A3A>
    <xme:Y01jZQNzsoULjSG-pb3kT2MsTo9AtBw_UbvSAXS4N3zHF13g3RdPpMcLnXwp1nMYf
    hnWGWNVTm_JKDjkXL8>
X-ME-Received: <xmr:Y01jZXgCdNjUlD6UlVvE8tsAUBoC54IfROY-SJ9Ld4MuJdPPI2ytfuIdJyUfgw9HbU1yj5uiQa1_H3XZGQEBCrVVBBxe2NWhJg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehledgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Y01jZT9JIP_y7kjU1L2WCh06Wk5hg8OsIS7JVb7r3HLf1hHDAUTEMQ>
    <xmx:Y01jZSuO5QY7UePRb8vJQbTtrh4RAB0lPwgKodLk1ocYpjhUjapIcA>
    <xmx:Y01jZaHGAgjFSY4I7hqE3BOEWUZ7-7KNi4Hc99bzV4IfQ5tJiolsEA>
    <xmx:Y01jZY32IQA3oIiQIXYYfLaX52IhcGFVfkdp5YI2LHrV2OHXehS5-A>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 26 Nov 2023 08:51:30 -0500 (EST)
Date: Sun, 26 Nov 2023 05:51:28 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: blinux-list@redhat.com
Subject: Re: vlcrc file needed
In-Reply-To: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
Message-ID: <e9da92e4-e9e8-0b40-fa2d-f87c7952ca90@hubert-humphrey.com>
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

Well Jude, while vlc certainly works, why not try "cvlc"? 1 really nasty with 
vlc is if you play an mp3 which has art work. It can take over your keyboard to 
where you would need to login remotely-and-kill a process or wait til the file 
finishes.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

