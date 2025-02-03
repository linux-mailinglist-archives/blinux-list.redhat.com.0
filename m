Return-Path: <blinux-list+bncBCL5FHHSVEIBB267QK6QMGQEYLY3TUY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AF7A258D6
	for <lists+blinux-list@lfdr.de>; Mon,  3 Feb 2025 13:00:46 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6f274f1f9sf753848785a.3
        for <lists+blinux-list@lfdr.de>; Mon, 03 Feb 2025 04:00:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738584045; cv=pass;
        d=google.com; s=arc-20240605;
        b=Q4COZ59aFguBaO4JIeQsyyORkhXwzxHJnugHdnnjHf8CgFb9cujm5nIilA7id5FCbD
         r5+aMdpYTblMWsDPDGxy9+yoROtg/czp/HmdVHQJG1gCXOF+BUzNedhuHiwF9UgCWM3t
         Rl8bm5wERGibTuy2oRaKuKBGJYWG8fW/DPZkYivgaDWiZa+6AGH/VvrocpoheY1Rz65o
         YbZ8moPjpp+vy+oeJ2qPbS2HhbtrpHJKoADXC0Lv448sdEwW6+LtHgpZTbZird+apM5J
         IlpivK0AMVCEBktVgtoO0RRqikcRK6t1IkAjlVzLRVzdIAqbpZcplhlh6m8+YwV0h213
         En+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=kOJ2ypTCD+USaETxttupB2+VDpBhKZt7/p7MGFaiLV4=;
        fh=vpw8WArFCYIa8gWA3wbJa+2hjTUR2YMsyHWshTpv5MQ=;
        b=iV+p/G2F92ftszHwfEX1QrERC9AW/q0s6Foc3AGjhofAzp3S0iB0/44SQYNmc2i6jS
         prCvI4/U+IFdB/l2ycE6b4+ELLi7AX/Qd43IStPXyNMAyln+wfExO1gIj10kYL7d/zH8
         +7+BgOmSUTQ4BRzkcXOdUq8PLsCJOvGZ5kRJ67+/nu+P1m9CizZ9lY+i4+9B4QlYHgEA
         XboraWVlm5Kz/4o0i7EzgLOfdxgsR3vFxiIONyMCG4VOxjrXO3yV6dquhWNaSEAkbiHB
         TfdPxLtVj73+EQpdSDK3UNF/5eZ2SfsCu9YyuXQOLK2T+Dc1x4nf/ECbV9fLHjSvgJW2
         380g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.45 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738584045; x=1739188845;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kOJ2ypTCD+USaETxttupB2+VDpBhKZt7/p7MGFaiLV4=;
        b=W6tgKx4oPk6Ovl5TEYrLCuNJzGi2f5aHI20stLRPfnTAdoinCiSshI8plN+rVB7g1O
         l26/5lLGQMY5YgjzttW0087gA3AE1x7uTH5I8a8c1pFd8A/XDaiEbO+r8z9MqQuMTX7Y
         jGo3ilVbSjJr7t8SUtlvbdw+0UepnWV1cdCKUrWP5PE/97Jg3Qq2XducQsix/XrNzUJR
         eRPsGYHGZvgflnJ6Q0RBQ5Ut4koS8weVYZPc4i2TJEGaZNdx/Exmd9D5JCwEunOt7csK
         9vI6ASXIh67jpMvm6/IM08zDhBcax1TEtWnGtOlFNyyyinmTgh/8jarhSva/AWNtKahj
         0SMA==
X-Forwarded-Encrypted: i=2; AJvYcCUpIEzWtJ7myAc5HehbYpeTTMQ+8ORUqCcddFNK+rBTDbUxLD+fNwxcBk1FQjYd7SjbOAtqew==@lfdr.de
X-Gm-Message-State: AOJu0YySTBQXQ13/iyEovWLEL1byUyfZgTGLJEGG0aIHCQAh6mV3GHpF
	EZepwG/enZVuHJB76m8Lp+sB+8GjyVX06Qo9BqRHDLIpVn6MaEpF5Jq2o/bnAJk=
X-Google-Smtp-Source: AGHT+IEMWWL7NQNfRRryedU4cI+ORc40NIBs8EBVsP+tcbE58LyGw+moULBzrKGJHtMiKS46rs0JXw==
X-Received: by 2002:a05:620a:4506:b0:7b6:f0e0:1cd7 with SMTP id af79cd13be357-7bffcd09c22mr2861579885a.33.1738584044536;
        Mon, 03 Feb 2025 04:00:44 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:f7cc:0:b0:6d8:87d5:f97d with SMTP id 6a1803df08f44-6e251eb7335ls4872676d6.2.-pod-prod-07-us;
 Mon, 03 Feb 2025 04:00:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWksI9sVGujxwDzGN/8L+sypgbUC1r68fJfNkOWm+wp8LDzXKH5nbwEbFmkIvkU/0FebB3JvH5a6MAI3Q==@gapps.redhat.com
X-Received: by 2002:a05:6214:3115:b0:6e1:afcf:8748 with SMTP id 6a1803df08f44-6e243c35440mr368240466d6.19.1738584043207;
        Mon, 03 Feb 2025 04:00:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738584043; cv=none;
        d=google.com; s=arc-20240605;
        b=flHLc1boiBmFqYCCDPmCafrjKqnBp8TMVGb218YmzOePgD8MJoSsSVnFCDcR3cOPzW
         NIYQS/A3BGslIsPGmPPTsGsU0izEwvphJhdVUpc2Z1qTUk7/zdy4GkbZIAZrTVO1gVLd
         G4DyjlJNaCR4dxK+rrj0If/ug3aMrhdZJWm/aTGjNDTmRUvb8+RyaAl1+3YJN9OaqLK4
         tvwPfCdjIn39dzt7PKLc2VLj9w985551U+cKnsxx+R1hdheDXVo9FtkLgXJkI+unPvey
         +H3lNYKZapbCrCbrpJ+qzn0iGDIqKMO/Z7VvlFfylUj0HvHipxETShux/4lDeMkAalq5
         z+AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=+srL0xzczyEZUQBjmT5/1MFRTnPBlHwzE8z84Q+WOAE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=CQ+Xg/b1kowT9eI31UU1IgsnKCJLOmmjIbQQvUsZrXctl546pJB8sJrhS9o9HLQl0g
         KxWJvxZxmYhsOd2ebaU8ai4HtvRNsxxHDhkMjv5aqgtsjL+i/IAggTeS9ls1Jv2rlUak
         96G4xq3diqo5bIE6xIczxCfnsM8yOTdlgfVM583jSL1PxzdPQNa11XiYrbpmXiHdMScs
         0Q/BUWlxKM54W0T+q1s1MHM2Et3uDBEybbtuZhSzy6lib9aaYwy2Ynf/1ggGFIenD93f
         TZeceu4eetiJ9X3bS/96H575FTRmlOv5ZPHllZMtIzcW+9qS5/+kFW6x0VsMcJDeh8MS
         g4WA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.45 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e254813f07si94542966d6.8.2025.02.03.04.00.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 04:00:43 -0800 (PST)
Received-SPF: pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.45 as permitted sender) client-ip=209.85.167.45;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-267-wMY5bswGMx20_j1pXBresg-1; Mon,
 03 Feb 2025 07:00:40 -0500
X-MC-Unique: wMY5bswGMx20_j1pXBresg-1
X-Mimecast-MFC-AGG-ID: wMY5bswGMx20_j1pXBresg
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F33CA1956087
	for <blinux-list@gapps.redhat.com>; Mon,  3 Feb 2025 12:00:39 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id EE07018008C8; Mon,  3 Feb 2025 12:00:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB2F5180035E
	for <blinux-list@redhat.com>; Mon,  3 Feb 2025 12:00:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 697DB1955DD8
	for <blinux-list@redhat.com>; Mon,  3 Feb 2025 12:00:39 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-88-i3s6dC78O6Suzy2M17KxOg-1; Mon, 03 Feb 2025 07:00:37 -0500
X-MC-Unique: i3s6dC78O6Suzy2M17KxOg-1
X-Mimecast-MFC-AGG-ID: i3s6dC78O6Suzy2M17KxOg
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-543e070cda6so687996e87.0
        for <blinux-list@redhat.com>; Mon, 03 Feb 2025 04:00:36 -0800 (PST)
X-Gm-Gg: ASbGnctShTOKGKNVC6f2TBWRtN9w4gukG8bg6rGcE5s3k2kLpqBlfB9/brB29uRvQrh
	H6QQwcr0g+EQILu8aA08sideEh8r48yG4XD6u5Mz06ubnQEw9JGit7U4qk/c78W3Cz5s2RId1FW
	NiED23fdbAa7JYib6hFxEO4Qqe5RnKnBhwBICG63ICmaW6UMONmTKEhX+VG3nuSRKpPfty7OKwJ
	Afjd1OaPlKER/N3Ohmwd5G+G+RA/ZaV2KqjwduHrCA7scpp9OFvX0m6zACwNcFcpw8wMAv86wr+
	yH/oz1UxsX9ZiOrMWlN+sxo0i4cZI//1oSO5HvKpyhPWNM34wzuEIyIMMTjW+autAHc=
X-Received: by 2002:a05:6512:31c1:b0:540:20c5:463d with SMTP id 2adb3069b0e04-543ea3d96e3mr2047488e87.1.1738584035068;
        Mon, 03 Feb 2025 04:00:35 -0800 (PST)
Received: from [192.168.1.100] (m5-241-186-197.cust.tele2.se. [5.241.186.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebe0fbacsm1298379e87.90.2025.02.03.04.00.34
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 04:00:34 -0800 (PST)
Message-ID: <368abce6-5ef0-b501-c6c5-3afea764c6bf@gmail.com>
Date: Mon, 3 Feb 2025 13:00:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.0
To: blinux-list@redhat.com
From: mattias <mjonsson1986@gmail.com>
Subject: this list
X-Mimecast-MFC-PROC-ID: VHRE9G2_hJnrvalXaVNm8UJ9lQmPgLHDjht-E8HPZRI_1738584035
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: C58nJjL4mUtex5Z-DpkRCLCSmU56i2iRKxtbhCpa_6M_1738584040
X-Mimecast-Originator: gmail.com
Content-Language: sv
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: mjonsson1986@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mjonsson1986@gmail.com designates 209.85.167.45 as permitted
 sender) smtp.mailfrom=mjonsson1986@gmail.com
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

when was this list closed and migrated to google?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

