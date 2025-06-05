Return-Path: <blinux-list+bncBCV3N6GOXMCRB6OARDBAMGQE22E6VEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF1CACF9D9
	for <lists+blinux-list@lfdr.de>; Fri,  6 Jun 2025 00:55:56 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f2b0a75decsf34759326d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 05 Jun 2025 15:55:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1749164154; cv=pass;
        d=google.com; s=arc-20240605;
        b=hwTCpyd6kxgYWLJQtKhYpeEzmtVa9l9rnuR5fLr0JatD98ABXLpkdNBr0UQOGPPekk
         ZpLCpGKZuGGewbZreVgIhHzikbPTj9xv8l7YNtRdJ6/EEYjS32/kodcdyo60WbU2GfI5
         NGdvmEyBXyu0A4ogSQemavNx7PDL+mH+jH+aG8QgUG5+cFM7GxQwPsyv/igOybTiimkg
         kD98hL0Jd5haveeDwNZ/mQoy0OOB24j12zoS9j5FXgrqVLwel3Fj8oOQnkwAE1kbHMDr
         hYLVdGszhPauvpzWOv4CULMDT1wH+G+MX+7+5CjB8LjJRTDMxEp0s8tn7g8IT+Fd/+XO
         p+QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Abutr/m9zQiormuf4E475I9Lsf7hH1YP13LBmvY7xfY=;
        fh=kDfpFX4Z25HkeuTtiRuLWOn5B4dVO9i6PS3p5CxEjdk=;
        b=GohTlLh+Y4Efv+LHx9mQCQr3wUKdiVgI6i/hWmNEAycC4wO6h/lwWy8i5dgrmQZuuP
         mJpVmZIWDoyU0vBL4V1HaB1eBVcDJz8vaQZkGb1K8h+6z0LMhg1pjNUlDGOtbiqv43j5
         VjW77KLvKd3Lox6/HiT/LpPTrxT+71xj36glwr5UDosVIqcsKcUUV3fzB9dJeK+ED+L4
         ZR68fYk8AhA1Kt/qHAi9CUbwHrjadl2S3lErsxsHTUmh45JZIMyJNjoaBi2tSyWU7tc5
         pY3QoZ0Xrc9oiyKIdBXvfC+JY9p4p7Qu//Rz1czZ5ql3hBvlbmYvmmxrTYWG7CDPvRaO
         gaGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749164154; x=1749768954;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Abutr/m9zQiormuf4E475I9Lsf7hH1YP13LBmvY7xfY=;
        b=dMqJD2hHA0FTPDiaSWW2Hn5xKxflwtWmn/7Ib5ibSrdblY+KxUoXdZ1ZTKJjlVlQeR
         fH3oOOrbjdEKwOw3yhS5BuDbsAMIbxkfq7Za9XRKYGXhYwflZScLIAyjlT94tvy3Oejm
         sdX1ry0jQPA6W/hqNZ5EctmaBJnWSS4G9AhyJyTrtyxIcB6gZmzueDTAEDvFK4k1viSG
         C19znD0taakT0j++hr/6GlZl1+cPzgjyr+aaVHbb5KPfpbL98yGmB5e3m2sbspVZdZpp
         4OQKXNylgwEZvuFokm8OyYb4SaNrFiY1iZckLhkZKLTrtb6SaJBTBP+nFMyzEHxGf5Rq
         r+nA==
X-Forwarded-Encrypted: i=2; AJvYcCUApsFHN+DXOYPtk/gTUCqpeypaKwGihpeD/wyEHiGVpi6AFu9wZC2atKRpUr+1YLqm427Dtg==@lfdr.de
X-Gm-Message-State: AOJu0YwZpxbt0elPJZQHzQR9DwbOcLH+Ws7xLwLyVVvXgtZ1z6Fq5kBJ
	0XhZ/agaL2yRWIjfSCHYn6FuPnHuQK399GQ6VzGua4UKnCdX7nE5B6PUqM1V0nrjAeI=
X-Google-Smtp-Source: AGHT+IFwgq2OzqkUyvBfcBcUFF2qBFuxypiOYQfrBqWXHg0QG7kDOsA2hs/FCRxDFctbRHTb+s8Bdw==
X-Received: by 2002:ad4:5bc8:0:b0:6fa:c166:d8b9 with SMTP id 6a1803df08f44-6fb08fd9aaamr19722506d6.2.1749164154117;
        Thu, 05 Jun 2025 15:55:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcDnisyFPfWFEBRQHbdZHxKq2pIBJ0JZ0ph7D6hEfRghg==
Received: by 2002:a05:6214:19e5:b0:6fa:bcf6:6723 with SMTP id
 6a1803df08f44-6fafff39e5bls26893126d6.1.-pod-prod-04-us; Thu, 05 Jun 2025
 15:55:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXucEK0XsfYeLpN4UPo8wWcfR/pB5ivTEIhNhF1lMkWwkiw2ivwvylwWkcr+JY2UYlvAiZmR6/VCZmeuQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:8b15:b0:7ca:f3c6:c0a1 with SMTP id af79cd13be357-7d2298ed317mr174467885a.55.1749164153169;
        Thu, 05 Jun 2025 15:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1749164153; cv=none;
        d=google.com; s=arc-20240605;
        b=agBVKk49w/6tvaK40mjuKoPIGO2iC3If1tlgTSlfrSLqy/7oITvW4akqCsLyx+1c4Y
         2eguv3zFfzOvp3hLxsgSqCbUymkRo6KKDM+Yff7SSmut25TzANAW2y7YwsSW9BUQgMUf
         Er9ud6ij/obSUUTRExz1DNDvor7DgBSJIE1/lSwnMgbefJVwTCijSytwimMgqpfMMQZZ
         tf6GnAwKLdvJc0c8Nked/VXKWd4Zg/bWlmddaBEFx+SK1SeAbIkfVdG73FiFLlmhyIyv
         r+ZWryPRUna+tLCVtNci75R4IaRG6QL1ebKCix0qaqZzhLfX5m/2D+Q7fqjv1fvLJnG5
         eYXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=7Z0BDZk5rHXQQyNupy2aQIXdkV+obgsc4lmfYA5HHFo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=MqlU1HEw4nS7TyhSdWlCeCcv0iXAe2xEy2p3j+EdD5yrZIoCcnYfb/QNBWDzKwWshM
         N9Djp3TAHlHxvSvQ4Ppm0g2l9i91/i9ROvqlQyxaLoxiv8F/h+6pdd9I/FVUiLob1LqG
         OcOtm5U/sof9pTW7fDPbH80s08va7zSvXdx8/v28sWtznbAiTDBstV9xgXU98bGMY5R0
         N1iRudDmLxwDivPHkESdggHLJbRp/9WjRTtl0FJI4NbByT2wyvlD2PDb1Lr1jETSdjN/
         es7/tiIDMeVvrhXvfBf626bSXmFYnd1QVDS0PMW0S653FieC4hHI4WdHWHbODNoa4y+t
         uojQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fb09ab0563si2882776d6.70.2025.06.05.15.55.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 15:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-693-xF5fiB9bMs-RusDObt3qZQ-1; Thu,
 05 Jun 2025 18:55:51 -0400
X-MC-Unique: xF5fiB9bMs-RusDObt3qZQ-1
X-Mimecast-MFC-AGG-ID: xF5fiB9bMs-RusDObt3qZQ_1749164151
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3B21A19560A3
	for <blinux-list@gapps.redhat.com>; Thu,  5 Jun 2025 22:55:51 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 35EC11954B3C; Thu,  5 Jun 2025 22:55:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 32FB4195607A
	for <blinux-list@redhat.com>; Thu,  5 Jun 2025 22:55:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF22319560AD
	for <blinux-list@redhat.com>; Thu,  5 Jun 2025 22:55:50 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-374-K4D0Nr3ZME-sQxrD0AbItw-1; Thu,
 05 Jun 2025 18:55:47 -0400
X-MC-Unique: K4D0Nr3ZME-sQxrD0AbItw-1
X-Mimecast-MFC-AGG-ID: K4D0Nr3ZME-sQxrD0AbItw_1749164146
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.235] ([136.47.142.229]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MaJ81-1uKMsA0Wzl-00TnO3 for
 <blinux-list@redhat.com>; Fri, 06 Jun 2025 00:50:43 +0200
Message-ID: <ee14650e-72a8-4e4d-915e-812c80747a66@gmx.it>
Date: Thu, 5 Jun 2025 18:50:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: removing a synth from arch system
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E61919EA-830A-4431-8479-2491E74661D7@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <E61919EA-830A-4431-8479-2491E74661D7@gmail.com>
X-Provags-ID: V03:K1:TPxXs7Lrvn4DemAGAormfE1su+TmDRc6J03U3EcVoqTgOOTafmU
 YhHguQb1xpdeyc9SY3kvs4452cmqdyvCgsH1adR99Twf6O6kF2YklJRfZ9IfSSYaSsPHJCm
 8+mYANbEzxE1JoOWpqTK3QVXiGsjm6XBOGDtmkEMOhretP2cIFBg5MJpk0hvS95UYs5lFOL
 L5nOsM3os6B2IWyScB8BQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:y5CcReAOLyQ=;Xsp2cSdSK4YT2pqQt9N9EbIFOuv
 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
 EW2R9a0wpBQPGHfl6oGxYFZJs6JYxhLjdT
X-Mimecast-MFC-PROC-ID: 4Cr9MjUYjuOudsgQLfSKO4X4370Ch2zeocchI9HYiQo_1749164146
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: iDdHWP5tzTUdYF2f4SNW4ldVHWDLkOOoNXy4W3b6YxE_1749164151
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

Something just came to me that should work. First you remove the 
directory created by extracting the archive.

rm -R <foldername>

Then remove your user's speech-dispatcher configuration folder.

rm -R .config/speech-dispatcher

Once you restart speech-dispatcher, Fenrir and Orca or reboot your 
system, everything should revert to the system defaults or whatever you 
configured in the settings for Orca and Fenrir.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

