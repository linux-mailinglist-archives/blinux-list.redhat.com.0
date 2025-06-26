Return-Path: <blinux-list+bncBC4KRXEWRQERBP5I63BAMGQEKK7QQPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F2AAEA586
	for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 20:41:06 +0200 (CEST)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235c897d378sf11017965ad.1
        for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 11:41:06 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750963265; cv=pass;
        d=google.com; s=arc-20240605;
        b=djECc+mZ+Cl/0HxGUy2sexm9OAKPGNmkZx+i6S7HW/uHgxZXEfnt0OZuTReVyIcKKd
         Bu1y67lVW3xVvL4m7QQX5bAdntCycoBxpTPOZqm72dWhTx49dcILbrzmQK6W1WudpI/M
         6u4CfVTXHW4j3bUrRqc+K1qdtquJk2liNNyrrlW697taLNyCxO8l7x4VnmFrLwIul45I
         7mIRa+JcG1JduoY3s4dOdNMZnzfruWbzjnp9FUGDmNKa6liCThZaBcK4pAVpJROkxFM/
         jEXMhssP5M/s/m4guS0B/VQhRxnwt5PNHg1ZexGDCwbuO1cWVx+pw3N0fk4+9NCaS4VR
         DQtQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-filter:delivered-to;
        bh=L+XZxiFdmiUhDb/g7CusA+3Afo6RzZ88JN1zOkU8LtY=;
        fh=aBoSlhe9rpotEJz27KagJYDM773MFG5GfTtZqDIHVpc=;
        b=RWX3F3SjbDbmlY7oXzTeuU6rM9EC3Cfvp/tnNZuuo0MH0GiyknQSvh7FPiLfuzkYuY
         H3HYslNQeM3hSi6x0ftJ2reWnfvRN+6Mf4ZTB+Ae/wI0KjLhv1GbeG/bOXU9hGTrRaN6
         VhbSwSWa2/Hay2qoJAfOko7GpwJbphFClr/2vWuk8fRNtgLZY0KvUOH4eU+2uTYjn4Rd
         X9xRWSHJ43cZSQPat+kMf0Xx0zbZG6x/9jUMtFdb+UFI55HyVKEzCfU91E/ZcDl7e2UH
         wCYBXMhjJuQ5DFUE83wuLAAdFAXFn/nFQD7xTCfHFQmBoc9BvldW1DHxocC/H/1mC7tG
         W1eg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@lamasti.net header.s=mail header.b=HlutOUhq;
       arc=pass (i=1 spf=pass spfdomain=dalen.lamasti.net dkim=pass dkdomain=lamasti.net dmarc=pass fromdomain=lamasti.net);
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750963265; x=1751568065;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-filter:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L+XZxiFdmiUhDb/g7CusA+3Afo6RzZ88JN1zOkU8LtY=;
        b=hn9TA3jA966T+YGLhhca5FaIzF1qqX/luzliGy5H+rpiB+uCouBwczF82V745xycqh
         3bl2Hznu+mZN4k75mHU3RN/MpVc11j+WFz02GnrGuuxVYQh+0jkkB3uDl5eo70ewEYXw
         yhPntINZLdtdekj1dILmgPTuZrKgNbL++xBPBlETkYeeRF8XafqN3p/EcLEgHpsR4M3H
         ekq91SutZhjX1hbtjR95cMwmygVxAFX1wFNbXBvOA1Gq8JA4a96fM3hE2gXvC7rSJ1K6
         EIkif5lrD0kYJCyvP/nIz08NFOxgo+zUvZBx/jnSyRwhp08fW0G7VofwTIJq+GPkxp1N
         qTmw==
X-Forwarded-Encrypted: i=3; AJvYcCVMOT1/xG7wYfIf/ZGBLZVDMkISNxiNUi4fGnKu9UrppiHKXlBjUifmX+YTyB9ybHHYuj2kxw==@lfdr.de
X-Gm-Message-State: AOJu0YwzYPuqCbJxU1cXqh5D3Aw7fwFOnMhRmqcWiLkQjCMRAyCIO8Uo
	wPMpRA7YdsoAYb3yvJR0yr3OZmmf3d2AMwbFeMGXakibwicfwpVnHluhSKPp9tPk+qIQeUHtadk
	=
X-Google-Smtp-Source: AGHT+IGsNxUnFk8v+XOo+Hd5krQjW9MOCyvU3iEAh5qRhl/+C1RbrB+c85NYisV6Ju85ObHHAXK/Bg==
X-Received: by 2002:a17:902:cecf:b0:22e:421b:49b1 with SMTP id d9443c01a7336-23ac487c9f8mr4642705ad.48.1750963264561;
        Thu, 26 Jun 2025 11:41:04 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZd3zfyr7yS1I5Bqo758/toc73Ctrx+7iz0ix4BQrIBNdw==
Received: by 2002:a17:902:e149:b0:234:e655:a617 with SMTP id
 d9443c01a7336-238e59d8489ls7668215ad.2.-pod-prod-02-us; Thu, 26 Jun 2025
 11:41:02 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVVwFPLwWSsmbXTaVgFf+TwQwxcOqO6zpcYVGV8UpWOoad9Y4HN66l2rZEi8CzxO+EdYR0+JBimNPDVbg==@gapps.redhat.com
X-Received: by 2002:a17:903:2f8a:b0:235:779:ede0 with SMTP id d9443c01a7336-23ac465d136mr5722895ad.35.1750963262517;
        Thu, 26 Jun 2025 11:41:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750963262; cv=pass;
        d=google.com; s=arc-20240605;
        b=AczwvK8o0eRv/Cxm2LDxKJEUIvTX/k2ag0s3pKLwXhgXDCRRVw+udr9K1fk3nwFkKz
         y+TEamTfmkxu4d2F+zSbP1fkUAeliPQWVIk9amcFtweWTJSmB55wBMw3iDPtMcapA1LF
         ZCNV10pnLOS0Um6gzZkO+eCchHlqpHpeRe1xwsbdfgvQAgPG3NF0KAdWLVW5wuuIga7j
         NRRuNJKIEe9TnGk2a3rQDML+7wVo4miIs0V7bb5IDmxHOqy/TvGai5EnLWmkB5CbYDHQ
         tjNea4mJMoGP/2ZxgFca1Xc6henue+HBa9xNVIS/PAWOiPoihPCnS6DWZTep4qpQrhfm
         rJeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-filter:delivered-to;
        bh=GIUOYxxBFHCce8P+Gc2JMMWY84xwDVvaKLjlRsNfuU8=;
        fh=J+Y5kC7kZyhseIM00lLeblDFGbTNlEjAqaLJjhjp7/I=;
        b=NL6snoGCJV9mYX72r6roCmLuUofh7p4anQvqHzLN+/pir0YnVixDZgASZM6P4AM8X2
         ZpaHL5M7jExvzX2LYLxOfQMZvspFwb2T3I7gl4zNpg2kQtHb2jl9VjG73ZLmZ8ugnryT
         MAp8Ctg/digB1KZR5OqVZBe2qfvVcUQY/TqsZSBe6F+eQiUExDnsQk7smlts12yy458U
         ZgZL32Q79SzOkbaFeMkMlhOn9hW+H9rBgAxelL2+TtggQIIBxYvHm7MogotJIxucSjEd
         21c7eI0R6cIpWfOcry2Ctiio/Nh1B4q2vcjJ8l/46Uk3nCX0UReqgL/COchbimZQNQAb
         qnsg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@lamasti.net header.s=mail header.b=HlutOUhq;
       arc=pass (i=1 spf=pass spfdomain=dalen.lamasti.net dkim=pass dkdomain=lamasti.net dmarc=pass fromdomain=lamasti.net);
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d9443c01a7336-23abe3d0a52si4253835ad.437.2025.06.26.11.41.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 11:41:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) client-ip=185.181.61.11;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-532-Y5gjRGmMPmmFPKa4MjSoHg-1; Thu,
 26 Jun 2025 14:40:59 -0400
X-MC-Unique: Y5gjRGmMPmmFPKa4MjSoHg-1
X-Mimecast-MFC-AGG-ID: Y5gjRGmMPmmFPKa4MjSoHg_1750963258
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2208D193A541
	for <blinux-list@gapps.redhat.com>; Thu, 26 Jun 2025 18:40:45 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0951319560B9; Thu, 26 Jun 2025 18:40:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ACCC61956067
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 18:40:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6F0E8188EA7C
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 18:40:34 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750963233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=GIUOYxxBFHCce8P+Gc2JMMWY84xwDVvaKLjlRsNfuU8=;
	b=BDTvX/jry8V78xVrNKDZodnm/DC1C8A+lllAPHW17/lKjyuMevjQcDq4Y51IlnxdNY+V0T
	xdF6kKGHap99Bx4W9SI7s/+UYsidag7N4HokRtOvfHqO7eBkd/Ck6ncY3nMfsDB/iBKNe9
	MddAGt5dD0b5VGtDPRJeswGNetszOD/KU0VEKNNYZQWzP6OPwff9F4kYxHeK0cxttMZl83
	V663SNW7nrg/8AIPZTCUB5UooO2mR4EGC9cfoXSHTV8fjOPQNk+OxUaF154D+hajqezLLb
	yEwTExDCYd+cHdAMKlcYzAfiDiJwI/lhF4KuWcglyIrcAO3e/fkFlzjMPGMhBQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750963233; a=rsa-sha256;
	cv=none;
	b=PephsjgXqGVSXZDBoK4LO5tBhsXd0Jya34cT36Rj4QJhvxrMlY6iTK/e+bgE1C6gzCtseZ
	wFYxez24w1sWpOgB/ofWs2Bp0MmFlO2hkvzF/QQGIUveydhVfBmRyoPBmByAVqiZo+l7wQ
	WlPigiluxlxEaTrFtXYLr9sROwB4639QzRFutpXXNRxVNt8TBH1TefFvnpu8WnCa6XL1VO
	Ky/Ccd+sPsLutkrXd/2inBnN1op7M9t1Ssz14pjiYxuvjF4dMUFMlK13dEIU8Q1ydh0AyD
	hekELnzJyv7bPg0ONOXtBP2DZxib8nxKrr/O0WQz8CIlbwxC4qq+54hXENrxxw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=lamasti.net header.s=mail header.b=HlutOUhq;
	dmarc=pass (policy=none) header.from=lamasti.net;
	spf=pass (relay.mimecast.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
Received: from dalen.lamasti.net (lamasti.net [185.181.61.11]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-687-DrUDUDb6MQuqXsu1HkKoHQ-1; Thu,
 26 Jun 2025 14:40:27 -0400
X-MC-Unique: DrUDUDb6MQuqXsu1HkKoHQ-1
X-Mimecast-MFC-AGG-ID: DrUDUDb6MQuqXsu1HkKoHQ_1750963226
Received: by dalen.lamasti.net (Postfix, from userid 500)
	id 82B8814C26C4; Thu, 26 Jun 2025 20:34:01 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.8 at dalen.lamasti.net
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 82B8814C26C4
Date: Thu, 26 Jun 2025 20:34:01 +0200
From: Lars =?utf-8?B?QmrDuHJuZGFs?= <lars@lamasti.net>
To: Daniel Crone <dcrone215@gmail.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: linux and Braille
Message-ID: <aF2SmS1If_tq7sdn@lamasti.net>
References: <A98ADDBD-B429-4040-94CF-6DE62DA80558@gmail.com>
MIME-Version: 1.0
In-Reply-To: <A98ADDBD-B429-4040-94CF-6DE62DA80558@gmail.com>
X-Mimecast-Spam-Score: -3
X-Mimecast-MFC-PROC-ID: 5JntCToiJMXr_6rUuaX5MilVbumW4vFhLeJX_M7BRcI_1750963226
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Original-Sender: lars@lamasti.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@lamasti.net header.s=mail header.b=HlutOUhq;       arc=pass (i=1
 spf=pass spfdomain=dalen.lamasti.net dkim=pass dkdomain=lamasti.net
 dmarc=pass fromdomain=lamasti.net);       spf=pass (google.com: domain of
 lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
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

[Daniel]
> Anyone know what Braille translation software is out there for linux?

I use Liblouisutdml found here: liblouis.io.

Thanks,
Lars

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

