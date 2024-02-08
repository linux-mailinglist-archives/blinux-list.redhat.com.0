Return-Path: <blinux-list+bncBCD3RKH4ZIBBBAW7SCXAMGQEEOV4HTY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AFD84D79C
	for <lists+blinux-list@lfdr.de>; Thu,  8 Feb 2024 02:33:55 +0100 (CET)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-dc657e9bdc4sf1892224276.0
        for <lists+blinux-list@lfdr.de>; Wed, 07 Feb 2024 17:33:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707356034; cv=pass;
        d=google.com; s=arc-20160816;
        b=CMOOgpJviXVxzYBvFFdxGZqw0hxKaUKJ6oJrLVM0QpU3WVB/xroDmPcB6p00F1fvcB
         JK+EdE0CyawIv/yP7KDXxeWbn0XxqrwHyINK/my/R8WE4hU6UVTX7DYXGw8NlvMQ6E4C
         FQlPyHlxpHzV41iLJq9WTQYdgv7qjcYsf9jvKJdwHz/XTCb+7HDsXGEhq/FuvqNyU8cz
         mwbnacug8JFhNVvviEhgDc87d9X2p3qq65Ys0CFfnkzdenavMZW3OekVQaZQLwMiVVOI
         Jpi1CdN9ixe4mCpHRWKHR5M4wmbV3Zu78w7pBGL8GM/S1wutEvttTXRxN9jg2xQ6K9JC
         d50A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:delivered-to;
        bh=05AfZnXVjyM7UKB0m265VloANpDAoqGBOGdutPDlBW0=;
        fh=e4mRYleg7lx/gUGTd2SL8XTI6LlUe+e1m1q5/LUG6LM=;
        b=SAhchFWF77EELuCuen4+wxdN8xfIGxzff0qpJWJa0l4G1HqYPHzVCQRBkKIFM9BdPv
         Cge7Dmn4O1JJlBpLrQKjFQRYQqLVwxiDX5Qp62P2/9H4pe5kgzHeXJm6B6iluWSBFA1s
         sCDynae4VgneYTy2a7iiCCpRs6oSkkXdYqmVyzWE8gRV+Glhz55KVf+rfa2S3VrnN0q8
         cnvdmYyzhw5RP7cR+UxGiiGmoNYdrLen4mqeqG+5Il+zYpD0fuZ7E4wJMFfCov7+ECyr
         QK5czdMi2iBrNTCUoDphFyRNUIWs3a5wDFI3nK+ImHXBuqhD0WWI1whuuFlLYx1w5Izo
         1YNA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707356034; x=1707960834;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=05AfZnXVjyM7UKB0m265VloANpDAoqGBOGdutPDlBW0=;
        b=TzSA7MAhkOaMm9tYzgNybp1bcbdwVlGRk+O+N0atEaQLCA88NL2kRSxnW6DTS1CV/s
         MnN+ONJPHOFvMjIdBHoRXCd+db9HQ5L398U2yb44DghnJAoryPIL/W1nKrOXQaQIY/XA
         BrS8+K/w6dUJc6EDUEO5jUXLVokfXKc0aywBqgibbN818c+HTksZqhO70qQXC6m2sgDQ
         fLbw9CZWlEfN3R5+dcaWTp/roWfH4sZxZdqeXJqAXEq9N03pJTxR4b7s8CTpzIAmCoMB
         xucr9wSCJoVh6c/g3UpHvnKdf4nqlrxBBNh2yCOAlPM64G9TtO7Ev0t6phd8VMRyZGAr
         78MA==
X-Gm-Message-State: AOJu0YwFflvokoEOAHD9Rlf8/nfQ57uROPTVZlsRkpRXMtsrUwgwGqQw
	DPYx3FjFswIM6sPdnC7Tea6XFUSfaZDwntZUGwjYu7vex9n2m/nTzuj+IgRRunM=
X-Google-Smtp-Source: AGHT+IG0osont5nUdCmNjL7VDOdnf3j9BKNKJNZMFLsKLhKMc3pI5WZ/8r7c9IOdA/I5xOldWFQTdQ==
X-Received: by 2002:a5b:650:0:b0:dc6:bd47:cc0d with SMTP id o16-20020a5b0650000000b00dc6bd47cc0dmr6505211ybq.28.1707356034313;
        Wed, 07 Feb 2024 17:33:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:ab09:0:b0:dc7:4417:ec4e with SMTP id u9-20020a25ab09000000b00dc74417ec4els84040ybi.1.-pod-prod-04-us;
 Wed, 07 Feb 2024 17:33:53 -0800 (PST)
X-Received: by 2002:a05:6902:154d:b0:dc6:c6b1:b10c with SMTP id r13-20020a056902154d00b00dc6c6b1b10cmr7712266ybu.45.1707356033258;
        Wed, 07 Feb 2024 17:33:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707356033; cv=none;
        d=google.com; s=arc-20160816;
        b=poOH1F2OPFO6NJWXWcJnWscKhWU4WkEfxqYDpYg1kieNoNZ6EqAn0iFIdKsTdgv4+D
         JYR8MUPb1BfV2i+TbHyGDNlAlul67MsnBm5uXwFuhY1dqqy+HM4WxVVIkcWcsYJvYP6p
         5RMn2wGFokBJfHgV4NM0L4J9LE81xJNhNoI8x2KLQcLPvwi81/WdbGC6CFkFeej6LpYn
         Mi5wHT/ELO/iVJq6W9iEXTRS50csZDq9zDcHW6LhNILgsgyjdbuoq13pNvHTC+NRgXAE
         yPZOV7aaZitdvfRyUPqrVYo0ib9Bnb5Fi36hsULJHDwq0rCr8tEgSDUpSAiI60OQP/Kj
         siEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:delivered-to;
        bh=A//iw+AcgbY8QlSn/BE/FM7r7eI3UOd+6YVZC4u9mu4=;
        fh=e4mRYleg7lx/gUGTd2SL8XTI6LlUe+e1m1q5/LUG6LM=;
        b=pJ7TDKdajZmjBp8Ut9l1gwtqeOwjksNcv/Gn1KHrrEvDODgEpV9R1eSIFYodIsnQHS
         zp0DAyKBV3AlZdqAKMbDWrDKCahCdxk6M/jmA/o+rC3InuLudPFivlhpSB79HJFPIo/p
         Pbmdsp8P/3ZdufM320QBFu8xE808zWreP3fIkgaKPDMsvIedJRf0mWcelG7Gr+ZvqhOs
         nbIzsUETDOcx6MhF3qf4Mi+VEF7edFc8pbK29BmU9pZ/i6sJ8wq5gIqj1kbRds/tZlfs
         5LTlndL02mg2O2TmcPpMj9sxvGoXHw86pnEZBL8WOpKDeO9wFWGFhsDLoJkl/HKnq/xS
         ysZQ==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Forwarded-Encrypted: i=1; AJvYcCX6+68p430ZzQotAwy7vIZuuMVOxzRNAcInVmYMZo5y0tMki2RR+XngklKsoXKvzjUt0Qnjmyep+T3ellrvuFfJ6l3Y3ooBw4scjLC1
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v24-20020ac87298000000b0042c4115e1a7si2149483qto.223.2024.02.07.17.33.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 17:33:53 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.54 as permitted sender) client-ip=209.85.208.54;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-520-jZP4NdDTPgyP2XX1u_5DWQ-1; Wed,
 07 Feb 2024 20:33:51 -0500
X-MC-Unique: jZP4NdDTPgyP2XX1u_5DWQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B2BC43806736
	for <blinux-list@gapps.redhat.com>; Thu,  8 Feb 2024 01:33:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id AF6DD400D6D2; Thu,  8 Feb 2024 01:33:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A819840C9444
	for <blinux-list@redhat.com>; Thu,  8 Feb 2024 01:33:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82B233C2E0A3
	for <blinux-list@redhat.com>; Thu,  8 Feb 2024 01:33:51 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-661-LVjskcJ5O_qHQ7Us17aK2w-1; Wed, 07 Feb 2024 20:33:49 -0500
X-MC-Unique: LVjskcJ5O_qHQ7Us17aK2w-1
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-55a90a0a1a1so1743590a12.0
        for <blinux-list@redhat.com>; Wed, 07 Feb 2024 17:33:49 -0800 (PST)
X-Received: by 2002:a17:906:70d:b0:a37:ba23:abbe with SMTP id
 y13-20020a170906070d00b00a37ba23abbemr6110759ejb.68.1707356027737; Wed, 07
 Feb 2024 17:33:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:1c48:b0:a35:8d46:1338 with HTTP; Wed, 7 Feb 2024
 17:33:47 -0800 (PST)
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Wed, 7 Feb 2024 20:33:47 -0500
Message-ID: <CAO2sX32wp88_BGcYTqXqZ3js4_G4qeNmj2XwaYNAMgsGUgqMiA@mail.gmail.com>
Subject: Possibly Off Topic: Putting Linux with Orca on an Android Smartphone.
To: Linux for blind general discussion <blinux-list@redhat.com>, orca@freelists.org, raspberry-vi@freelists.org
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.208.54 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

Okay, sending this to every blind techie mailing list I'm on, so
apologies if it's a bit too off topic for any of them.

So I have a Moto G Power 2022 I got around October of 2022 to give
Android a try that's been mostly gathering dust because I wasn't
overly impressed with Talkback and one of the people on my family plan
has been talking about replacing their Samsung Galaxy s20 family
phone(I think the exact model might be the S20 Ultra) with a newer
phone and I'm thinking of asking if I can keep the s20.

I'm interested in trying to replace Android on either of these phones
with a more vanilla Linux/GNU setup Running Orca and was wondering if
anyone on any of these lists could point me in the right direction.
The plan would be to connect a wireless USB keyboard via GTO, so I'm
not overly bothered whether the touchscreen works or not, though I
would prefer to run something close to vanilla Debian with LXDE as
that's what I'm running on my Desktop machine.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

