Return-Path: <blinux-list+bncBCV3N6GOXMCRB44H7G2QMGQEB2ES6GQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6509539A0
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 20:07:49 +0200 (CEST)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3db2017a251sf951702b6e.2
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 11:07:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723745268; cv=pass;
        d=google.com; s=arc-20160816;
        b=flKRErvtSWFL2/iGXFNtvNKGyjHupjlqJ9UX+/XVY35zg4TKRoQ4UJsipmLQL5rLYc
         HWB5zT5+FpMLugHwuZ7wcs9E5oahx7H43xNKx0tiJ46ToJfcgB6ds7ueHA6jDa88Txtz
         FjCHyLQVo8lNoJ3341gBjm7A5SBlQfnpZ3nE/f4se7ML1rDD39IlaLpZtYu6lVWGlhpF
         edZpSwhOVffbHUTDro95o443LbqRBCfKl1D8jnQNHZXaUlLYy5FT7EAgq587+edk7gvb
         i7bcaNAXzUU5XHmeotZfRSdHJdbGOQCOkDZhXJokXak8KZyFjRugnfJyJnos6kHUhavf
         OjSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=dlgDJmM/qno7bnSdNzcLc9GvsXOiUaHx8tXrmMW++uQ=;
        fh=zj1HeypZMXb5Z7jM8xoprTYnM2R36A3CF6IkLr1PC1I=;
        b=ZPPNr0asWrO9nXbn8h2d24hw/jJ/qVgPdT1Yne76Tfh96221OkNuPleagm8qoFFKZV
         5uwbZ52kNzGC8jjKa/0FMQM7bF4+/zi6lTb8rzAWdSHgsnRPevWYmbyeeB0q4Ug9xuCx
         T4Awfqq/qfFAa3gJQGHaJEaKfGjCEKR78F9THeZO6ExZZ0qbNdAtzaBcTCcWngQ9n03O
         7vgTkIRNfshRRbuoayOuXVELRiqOuwQDbzkyxMEEGx7vEbwHot+MzYd2u6lXVM02ad9D
         EkcZN7UEzhVcUpf4A8z1Rl5dljsmasCUa/XOwHaswTaYcpKQwbRjhgYjBNrHoRJ5VYvZ
         Fudw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723745268; x=1724350068;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlgDJmM/qno7bnSdNzcLc9GvsXOiUaHx8tXrmMW++uQ=;
        b=azRSW/7i/p+A215pJ65Ha7fNnLJo+v1M02TXsb7NDHd0+ZnArOTkPTK15QLFSHv4zb
         bwA2SgZddy0lXe5V1bDaj7jODDvvFMEpfTsnBBb51/l70Tl/of5+f44jgZzIMO65jbf1
         of1Zt9hjS4Z3FzbhhlOL052RCepJQR9liuNtyzJcEqlW+UNNjz0RK822dkdf+sUW8Iu7
         SwnYgNKcj6189ISutayRMR/Rj0OOLaNrYmyAdCd/H9X4I4evFiygQNhc4yk0qZnqoHNI
         70WG1oDgCjl7KkgmVQTIntg+yyuOioBuBuM852e/OaPyaTcZrbvYQYx+D/p/b1Ebj+Ng
         seRA==
X-Forwarded-Encrypted: i=2; AJvYcCWYPMvrrjc/7AhiO1P/yjQM2E0KmEIHiij4JEXgII3vau0oj/TmeAlXTxxwZiK9Mnkk9hOb/zd8clPcW32h5Xe/lxjM3DW5m8oM
X-Gm-Message-State: AOJu0YwGsr2qXu9dAZdQWqJK3PsNcUeR7s+ZhUn+E5iToLH/WA2qlcUM
	COgI43hBnU1pu693akk3zd3pCWH3DBkuBP9XCWAFVikhgZh/2XGdxxSIw1KEiUI=
X-Google-Smtp-Source: AGHT+IHZRzc66WLTwq5R+mm1KOOBTqEW3JH8Jt+dp/9SKwyaLDmDiyKzWzosRLownPfC9rRyrJxA8A==
X-Received: by 2002:a05:6808:1a0a:b0:3d9:b33e:d3e2 with SMTP id 5614622812f47-3dd3ad40b06mr216620b6e.19.1723745267846;
        Thu, 15 Aug 2024 11:07:47 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1805:b0:447:f242:15e1 with SMTP id
 d75a77b69052e-4536745fad4ls17135721cf.1.-pod-prod-02-us; Thu, 15 Aug 2024
 11:07:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXshWFWY5reB2opQiEAzsNsj3TYwfcIg4q/jJb7fJiScc8e1/YWu6z4VHGJjC5/8yDAsBpsVuzv4N31MTtVI15KaT3oJm+oggyG4MFk
X-Received: by 2002:a05:622a:618a:b0:44f:f814:38b7 with SMTP id d75a77b69052e-453744042f1mr3043661cf.58.1723745267095;
        Thu, 15 Aug 2024 11:07:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723745267; cv=none;
        d=google.com; s=arc-20160816;
        b=B5J3rJIdfGRJXSPaQT2AkhrHGy7JAMEw9iKpIbE3uKXAnEztbY1iRghUM8AKdf+82N
         YyzctLPpZk50m9GEUXVyuMJcMJEJxpD7lKPhbFSh7+d5iiRvA435lwf4YNRVK4+X0YMh
         L6Gaw+fg0aT3YsZ1eY+NcqsU0vtNy2RMlNR281FD26EzFZ55oPMvghswF/nTgmlhQejN
         8fHzLE0/cqKrhmYaEsq3EccxkqstkrN/xxr8rwbTMVppBK4n2rHA6qfplu+86zdIB7Hh
         ab17VKUVeOu/3dcFPiPq2MQHOLMvXTNIs5dF4GgYUFrZjTD/Fz9jKqOMrdijlYooCarD
         AKvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=i0KVBq9wEAwQvF17YKqMuZk4PfspqosI+YFzWdPZs2c=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=uFTzVeso+SUR5LrHlNhhtxOPgid4mTel/nj/qSZmfjsi2jOLHPqoNZ0QGhQM0kyRee
         TlqHSET0cc8YFIH82a33kP/7/y5r/R/YbbQg8BcA63Ce6N1KwRLKGTZyOd6rfjitWCv5
         AAM17pLHq/TLe6vnzxFWyxWKm6mcsMvodp+xW1q/nyXlQC5yPcqe2ao60hCRyLb0yHHc
         ERxiaOqQhmZP3AWLJGJfU/JQVaRYuuFpf8/QN8pc1hkqV/j+bwVZMstilFm2o/mweVXZ
         4jU5SatucTP4ugVxF4ZfojcY0+xzhwi+b+4/yzRwaiE3WchVGTYpEhtHwcdBdxi3Q3TQ
         SRBg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a070a6fsi22330721cf.289.2024.08.15.11.07.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:07:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-445-kdAst4CAOJa2rnlY4ig8sg-1; Thu,
 15 Aug 2024 14:07:45 -0400
X-MC-Unique: kdAst4CAOJa2rnlY4ig8sg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 99D0919560A3
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 18:07:44 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9503D1955F1B; Thu, 15 Aug 2024 18:07:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9249C19560AA
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:07:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10C1C1955BED
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:07:44 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-311-_W6-HrJHNPSQbE144yhvLg-1; Thu,
 15 Aug 2024 14:07:41 -0400
X-MC-Unique: _W6-HrJHNPSQbE144yhvLg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MDywo-1sUnVo0TZs-00Gljf for
 <blinux-list@redhat.com>; Thu, 15 Aug 2024 20:07:40 +0200
Message-ID: <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
Date: Thu, 15 Aug 2024 14:07:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
To: blinux-list@redhat.com
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
X-Provags-ID: V03:K1:RuTtTQvwSIKKCeyiKZ5751oFZV58Qk9+KBDcltxjph4cKYmKKyn
 mGfUMYn60PpS8FLF9+TNxYQs7nqirmlJ8E/SoJRKyTyZXMBOBok2tAgZvanS9u1+XSL0bm7
 uyGEKI8zfYooX76ck7GIK++WNKVJ95RFsIvK7kcHDdarrmAzXBaYwxTSopLuKEEgNJTi8zP
 ajZzjGJzYrI/NkNHqlWIg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:OQ2MtriUXbM=;8p1/jFeSw/3lCHRbeLVuar/idJJ
 R0sPCbJyTTG/E3SkaP/tYYhuIuwSYT40LQ6AEiwXsIvxwVDwtFaq5Pb2UwuiFrIW+j4R2c/Tx
 /cHQneKMn758K0DkOXBE0xtOVOQAWhjziAtEWNmmbhg3kRRcC7auh+ZzBlRlAEM4LeLyUKsKO
 Rbchs7oEfe6bAnjDu4qAwXRvDiiJRBsNJnh07Vl460ry8jurDoz8E1BJFN/Rfk1KNO8ocao+E
 7TbEwkkAevIvdPhHG2MJXQm8qnPrO+Gkf5Pth+ADffnjkggkP0Eb2v2ob0ImRtWX1STs6xb3W
 Jc6fvktTUlnBz6BCD1RKPeIJBpbnW9mvaPUTc4zdvACMnJxKk4a3GdmFZu7k+HzJAlefi95yn
 /DUeYlO0aUdIbhc1cFFfAuEhN2nYQ387SssDSd2gVuaCwFnngCmh6Vrkj9CMLw6X2Y+8oLEKP
 bij2yCXX01hku/5dHFvm7DtoQaEtw8DD6cTReV5Y1AAhzNSfsMtg1m3fueHH8cBRni9i8BMAk
 aqwkHwSCcPMtH0wbDhmyi9vfyfQOdZD4bliqESO8XM2j/eYB9QoYTNNOv+HSD+ezJxUjuNjll
 fuoJ6/4KOmoIkY2JH+ddyAVj7yNNWEaS191kb2GUB81AQoMBuooC+VTqDV+lSCPK1YbGiPWuq
 Oalio2vzAYR047TIsegWsfSOPUHJacafqsJLI33oEu3PoeaWnGTm21Pt8q8I/TPpR1GdGf+qy
 warKx5+bJk7UKiJU7zs2KFUwQc4o1yFjNKaq2M94eerm9v6AzWlgSU6HWlAyoBBslw43jn+S5
 9pu4zDCPh5+bxNywtlSYiRmg==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

NVDA, though it does now run in Wine, is not compatible with any other
part of the Linux desktop, making it usable only for some Wine
applications. Your best bet is to try to get Orca running, which
shouldn't cause too many issues for you. You need Orca of course, along
with speech-dispatcher and a working speech synthesizer, espeak is
usually the default, and is most likely to work out of the box; you can
of course change your speech later once you get Orca speaking.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

