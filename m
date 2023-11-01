Return-Path: <blinux-list+bncBCVPTHE7K4IIH4UJVIDBUBGEXD5EO@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DDE7DE46C
	for <lists+blinux-list@lfdr.de>; Wed,  1 Nov 2023 17:12:52 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41ce372d248sf84145401cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 01 Nov 2023 09:12:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698855172; x=1699459972;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vjLlXDNrG2DdzM96vbg0qPAwViN0zpTiSNxmUc6Ap3s=;
        b=CNm1U64V7ZP68okN7yrjOgcuUM+1z3GkuL93sZIRAqpSNBJ80D1oBXeoITlpTvTLq3
         +LHNCXrF2UQ0FrSqXq/WtY1yhulcOmkBI+vV9dHNjN4xSOVEHcbPFHMBRDjTHMisqV3b
         hFuxa6N1X31yCGvGvX4Rj45INJsi6m/5joCL+woL6jBkwvD/+k2LuUCTtFXg668W/NoO
         CNcDOKvkPytIKU0YD2+iAtOSDA7OMgDfTRPb5QdAtW5udpDr7OW2fbZJcmEcMrwDQS1v
         ZLs+UGw5aXxPnrGYzGoG9fC7QEs8LTjUChyfwp+kkDzRtDQ4L1hcepyj+x1Bw+JrPc4Z
         I4Sw==
X-Gm-Message-State: AOJu0YxtSeFS6xb+JanFF01IsQpAh/rzBcgu2Cp0d5uots4EKHD6rtla
	UiXhSqrzn94GNBooj9Ql7vg+Jw==
X-Google-Smtp-Source: AGHT+IHCpAcJdVX68aNKaCWAJS5E7JQEEmZmZVC7/xPyZie6u2mlfjD/R5cb5GkFc9jKAPsN8sbokw==
X-Received: by 2002:a05:622a:1009:b0:419:7623:ef6c with SMTP id d9-20020a05622a100900b004197623ef6cmr20783910qte.60.1698855171493;
        Wed, 01 Nov 2023 09:12:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:6903:0:b0:41b:5e46:aa64 with SMTP id bt3-20020ac86903000000b0041b5e46aa64ls5220190qtb.2.-pod-prod-01-us;
 Wed, 01 Nov 2023 09:12:50 -0700 (PDT)
X-Received: by 2002:a05:620a:1a1a:b0:775:937b:c594 with SMTP id bk26-20020a05620a1a1a00b00775937bc594mr18934761qkb.58.1698855170661;
        Wed, 01 Nov 2023 09:12:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698855170; cv=none;
        d=google.com; s=arc-20160816;
        b=pVAIqJOhg5O0khoIX//1ynaI5ol8CGtY2pO0ZsKmZjEVjuFUXgAmHXv4PcWo7xKmrj
         0FezK5+fQpkCGQSwJAIh4HA7zrNmIdl6bk9qdbyx0Pr1zfakJcWMnc+wddSjAmudv3R9
         YdoT7xDRqYnJHiegnarsfnu5PUlhYF40EZ0Z3vdOwsEkesbA/erB6sPKOxy8Muxefd6u
         1L5mpLHbyFyuL6MvMC0pE6HZ7ZJpy0VZU/gnYT2vPZxdlMpUJt2bwDa4kP9nN1uScAZM
         W6Fo7NXd4b8QN/6i5f4V2hVoIVJlvYN0GWzMMA+7p+4CN7ShfHJ3XYQRucrNxhKgKpqK
         Yw9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=vjLlXDNrG2DdzM96vbg0qPAwViN0zpTiSNxmUc6Ap3s=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=mFvRQwgwqbWCsnD1h01YgkWCSX+xRAYhCHwOkuW7SeGvePtZ6543Ii3ALWh7Udm1pi
         +9JwgrolBRrUG+xvQ204ghs/pOIVZMhiDj44NLEk4oV9/Pw2uUIZOcVLLbcNJ+uZCKlv
         pVFLDviYWvH/gJ7Mya+V6oSF2vmNqK7CPPfJU4B+dHO6FAYNTfJpdMt0/9MGzuJLElsk
         OT6l/5NentFh2yXQqr5nj0cDMPD97O7z442c39GuvnsDGiHwlcuDCP8CIFXRexkjEm/M
         07u/G/OLF5qTE6kkXADsfVJdTEYm6TxwNElrEMFwI03EqmDjgP4Xwkbd2Ov7F4e11qXX
         8gAw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id m19-20020a05620a221300b00770f73d1d6fsi2892995qkh.222.2023.11.01.09.12.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 09:12:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-640-xIqfi3J0OJae_zPXSWOObg-1; Wed,
 01 Nov 2023 12:12:45 -0400
X-MC-Unique: xIqfi3J0OJae_zPXSWOObg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F06F1C08967
	for <blinux-list@gapps.redhat.com>; Wed,  1 Nov 2023 16:12:45 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2BE993D4; Wed,  1 Nov 2023 16:12:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23BB8134
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 16:12:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0438885A58A
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 16:12:45 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-677-_TMBPi83MGuW7Bd1myPrjQ-1; Wed,
 01 Nov 2023 12:12:35 -0400
X-MC-Unique: _TMBPi83MGuW7Bd1myPrjQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 1ADE240508
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 12:12:35 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id C9AB51001B8; Wed,  1 Nov 2023 12:12:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id C83231001AA
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 12:12:34 -0400 (EDT)
Date: Wed, 1 Nov 2023 12:12:34 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: simple 7zip extract command?
Message-ID: <Pine.LNX.4.64.2311011208480.3174618@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi All,
imagine some here use 7zip to extract files in Linux.
I have an archive of a program that I want to extract, keeping all of the 
sub directories in tact.
The file  was compressed with 7zip, that I have not used before.
My google  suggests  something like
  7z x file.7z
will do the trick, but wanted to ask as I am unsure how well the program 
will speak.
ideas?
Thanks,
Karen


