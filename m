Return-Path: <blinux-list+bncBDP7P6HU4IERB77AXOZQMGQER6GYLGY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D5A909DDF
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jun 2024 16:02:41 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6ae4c8c30basf37989646d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 16 Jun 2024 07:02:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718546560; cv=pass;
        d=google.com; s=arc-20160816;
        b=FPE1lyrhSbKhe0jxiqpQ3cUzGyYQ4jfUTLTaS86WYTzyf1Nuw3Eh8Z4NmNQjkpN1ci
         1QK6Cws7qkhU0A1zaOJ4kyZM8DmPVbt8Fhmcd0Yy659yu39z5ojgIXSHj8anFR/pEEB+
         rkAHPR1rCQC8HaYP1AKu1Pc0xmAs6Dr575WD40fDoe1ACUYYEMfj7yMdPpHphhcmMX1X
         E6O/9Erpkxh+lzP37Jgjl/oTKsUSXvDsK9fZ2p/fqHagtLkMFC8WsgUhDCKOcCvCn7dk
         f5RFUPajxHeXB/V2BOmCAzt1DWdDgfOUW+tUr3ofiHk5MqgIDLCSnWDdsK+vewU1I7Lb
         3ByA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=dYvsVx4fYAtplXuDgeCF/akiROjw2rObfXIlUMtAr+Y=;
        fh=BWQ3GzdgAP6w6E56RTLeR6a6JjE4QTC01ljyjC67CKs=;
        b=MMyQma9/nEALOZgEeP+7/OOmHhgDopNYaxSxMLyLkniBW3Kz0LSZsQ1YO2r1bRY9YP
         F26fE/bvnLZbujwQumId4YAf32TdtXXwx4Ke5bHuS0SKMjdmNi3dYMtAxp6IrOyRflCB
         79ieTryRoQzLsxSWL/mUHyzatO0pl9igzPHAJhAyIS1xtMcSCxBMPGnl/mcqm6VozTZd
         btjKVY+GL8ud0mjO7u28LsmhDJD5KlKYYjDBXZCqu+e1mwA2bHGq8FknZY8Jlzf1ApLk
         +jvjXCa07tr5znuTP8fcPEePiDQ7GEPUNKmX4Gk6sdaDstGhqZlA6m0udmcLN+WC32qu
         ITag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718546560; x=1719151360;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dYvsVx4fYAtplXuDgeCF/akiROjw2rObfXIlUMtAr+Y=;
        b=EPmCMCKbk4c4Qszyoo80Vx2UCA5+QtbLmZQQX4OSXTi4k1D4jV5W73ZTddag95x4wo
         p2TjFCcVPGDRWOmZsT7Mah1wn098idLsrJAP1MmV8pMFbJ5sHYA/YK1kvprcIJnr87ia
         pIX3jT61ImhXkpQgcINwsqbhRyhPhRnsuRlQwbohars50dosYKjrxyjU+AgpDg+hSRGj
         InLYNxi8+3WHAVaKZDzrcSuP0b1ePKNgMkQhCqGxFBwX32kkd0T11RRh8WFRyU4vXp4j
         8QLe2od6g6OQttK1aIxLqpd3mPgBl61igfJhg+VdIMmXwRTxiyRcdbJcf89waquOP3DT
         Q2Ww==
X-Forwarded-Encrypted: i=2; AJvYcCWzdzK18OsgCidZYrQM/0Gz9EOqTWhJzSYzsAOwE6ExArBxAVzrSbyvrPcOIUC6+zu3xyX36kGmE2exKRmjFVFmR1vNOiJ139+R
X-Gm-Message-State: AOJu0YyMhk2tMaKINq3xgMALJ+M43wtsd+sLq4UYc35PkuQ7Itc3gVTw
	yycBKyW3h6Jom7tXd4vwg92QCMbyO0YBT5D+OYGwF0AaIpo+2Af42GDvBef9h4c=
X-Google-Smtp-Source: AGHT+IG57Xm+mFBfEKCfRWEvbZrL80w+y/Nt8RVnIKH5AdjOkXlsiERO50+hHn7IYgwYBpUHykEfvA==
X-Received: by 2002:ad4:4484:0:b0:6b0:4201:3840 with SMTP id 6a1803df08f44-6b2afd6a4a3mr74937296d6.40.1718546559608;
        Sun, 16 Jun 2024 07:02:39 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:419f:b0:6b0:9379:f464 with SMTP id
 6a1803df08f44-6b2a350c0f2ls44552276d6.1.-pod-prod-04-us; Sun, 16 Jun 2024
 07:02:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWnpy47ql4epwsS+pGUVkuo8oczl06gQxpNpwz+FIbEEZ6UHrFUjiEi6uOzz9K9jT9G6XbqCdwLTXovF/7FD8YiDm02FDmkcZsaI4z3
X-Received: by 2002:a05:6102:815:b0:48d:9ae1:509 with SMTP id ada2fe7eead31-48dae3d8cffmr6621427137.25.1718546558583;
        Sun, 16 Jun 2024 07:02:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718546558; cv=none;
        d=google.com; s=arc-20160816;
        b=KYCtAtnv8As5ymzT5+o8L4Y39bpCMI3VnHnd29oLUxsHBnkbzaPqvtJIFCO2LxRTb+
         Z6C5qS3jiWA5um+H82Diuz6/9traSdKYQwWZNvKyuyMlug7wK2ybQ0+Uyqmr1j5ENsT9
         Dho0DkCu3aZIdsze+wCcwRdlU6vhruZc3YA4ZP8sHmRRGrDE853DVI/ZvADtbtI4TiwC
         5thEoabFqMLtik+NxJq1gUf7CLbI3W7NtQBIMClU/pZOUoXhk9Ah7fNTm374P05XmKAP
         Q8BUcWooZC67Dj/TX69IFU4qp4HaTlpQ6SjCyixJU4gpn9+MP+BDCWcedpEes+UWvnlR
         65SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=Dczt+HS4J0TwZ82hL4ZDK7xIwfp1q9ve27JctDyAI24=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=R4ZRUfMLToKn386nMMwGkmXAsTIxsvuxVZ9u/8ZW6mUaWJusfQYZ+N/bvCV8rZbWWw
         u2OvoGd0bNxNDLjbBNRT7jyhA+tJe8yQ+LD+bFFsICN1WZQzuBG/RqeuDEi7gry941Fa
         lh2E+HDIPIBrfOPXJFERzjjBZrmagTKBPdOjmLNvj9T7KfteGeyy+haEcIGQMe8NC/YN
         4CYpjcFCvot6uzd0zpBdWvqYBoug3cJz9+pI32UG20c6kLl3a/WKbMl8F8qWYEFmh+FA
         UbZOf5MjlUcOu6eaR1dXHyWouw+lj2iyuAxXTU4y4DvowFWsvndxSn7DZhRlmTEVECTE
         efMw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-48da44cf689si1224398137.820.2024.06.16.07.02.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 07:02:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted sender) client-ip=65.20.63.148;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-608-BjaA4AbKP7u8S7hxSyFX8A-1; Sun,
 16 Jun 2024 10:02:37 -0400
X-MC-Unique: BjaA4AbKP7u8S7hxSyFX8A-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3372D1956086
	for <blinux-list@gapps.redhat.com>; Sun, 16 Jun 2024 14:02:36 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2201219560BF; Sun, 16 Jun 2024 14:02:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1F8C519560B2
	for <blinux-list@redhat.com>; Sun, 16 Jun 2024 14:02:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 930131956089
	for <blinux-list@redhat.com>; Sun, 16 Jun 2024 14:02:35 +0000 (UTC)
Received: from altprdrgo05.altice.prod.cloud.openwave.ai
 (altprdrgo05.altice.prod.cloud.openwave.ai [65.20.63.148]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-198-oSVcysy0OCORACMWB5NLkQ-1; Sun,
 16 Jun 2024 10:02:30 -0400
X-MC-Unique: oSVcysy0OCORACMWB5NLkQ-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 666E01F3001BAF62
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrfedvfedgjedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdthe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 666E01F3001BAF62 for blinux-list@redhat.com; Sun, 16 Jun 2024 10:02:30 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1sIqSe-0005mw-1S
	for blinux-list@redhat.com;
	Sun, 16 Jun 2024 09:02:24 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-reply-to: <Pine.LNX.4.64.2406141644490.2830678@users.shellworld.net>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <20240614172449.szw7ot2brjxpdjxy@sprite> <Pine.LNX.4.64.2406141644490.2830678@users.shellworld.net>
Comments: In-reply-to Karen Lewellen <klewellen@shellworld.net>
   message dated "Fri, 14 Jun 2024 16:45:39 -0400."
MIME-Version: 1.0
Date: Sun, 16 Jun 2024 09:02:24 -0500
Message-Id: <E1sIqSe-0005mw-1S@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <22252.1718546544.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.148 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

They do appear to be doing something.  I don't know if it is
because of some failure or if they are adding some new web-based
"improvement" which keeps stuff from working in a predictable
manner, but it seemed to be back to normal right after the
discussion started.  Yesterday, I did a duckduckgo search for
something and the first time got the stupefied version again that
did nothing but then after that, it worked again like normal.

	I suspect that either some particular system out of many
is broken and, of course, we land on that one because nobody can
use it or whatever changes they are making are not done yet and
some of the older systems are not updated and still work the way
they used to.

	When I worked in Network Operations and we still had a
dial-up modem pool, individual modems would fail and, of course,
those were always available to new callers because they dropped the 
people trying to use them or they got sick of what was going on 
and hung up so that the next person could get his or her fill of 
dysfunction and run in to the street screaming to play in the traffic.

	One could go to the modems and try to find the bad ones
but it was a game of wackamole at best and everyone's tempers war
thin at times.

Martin
Karen Lewellen <klewellen@shellworld.net> writes:
> Ghat lite edition of duckduckgo has been around for some time.
> Kare

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

