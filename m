Return-Path: <blinux-list+bncBC3NDNGRUAMRB7P3WGZQMGQE7V5Y3FA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 032B5909173
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 19:29:35 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b071687868sf27382946d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 10:29:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718386174; cv=pass;
        d=google.com; s=arc-20160816;
        b=VUOM7zWbM8AHg7NioPvNzdKwOAbfFktGxNfu6UB117Qvxo9cks3rgUDddJqV6ncQuX
         7aZTLwMX2OZc+eXYuHv96HD7zmNtZxKELbnu1d+NJg7qjJlfRHwnroHtzg8QrcDexKX/
         gNochxpQ5NylGTSJypUxkBTbl/1GAe53jn4RjZ0Qz+VZFXdy4MSbztwG5U2q55VmFz7/
         K8jlnZIM270cl322+XMPkzKMszdrDimx9Qmq8yMEXdEF/lJT+LNfGyp9S0qQEf9Td+5I
         qD+GUVcFwcAXQYilQgOs9soBbaGf3sZqfCLKmMYiMPq6/Umtznf+PVk8yWRkDGseMu/x
         XTyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=vENOSR0HkwGaIxCBlNh+j5HFN1stR/0MBUKvfauUvmE=;
        fh=bijX+A0c8ETgchC+YzNVAWGdDzUNk5k0Qv3tMsWGBx0=;
        b=fpGkWIv56mRHkNoCEhyOCbH32ZxTfhZ6HOUuqWkW1IZIfUCvjb1WspxKeke+fB4TrU
         Q/rbEYwM2MXba0nseG2Pr0VuKnoYk93Qp0AWYRYgqU6A/tf3ZfetdF9noIRhSK6Hahaw
         /3IX65c6MfXGmr9FnvghlRwTkIFiPrMhFQpChgPF6RpYU+KLvR7SGoO2N0vfOWOjp4mn
         +XWA8L6FS9T9TlZAuUKRoaLc5n2XcB7ADqrJivRUjNeC7hnwnMU/K/u99pFvVe4o1tYn
         nMxpqQOA7V8JviDq1kDkk3NY2XysVdeelzTr6cGCLIBJ9cj9+mAGUwlwxa96+gYurNYB
         pBbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718386174; x=1718990974;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vENOSR0HkwGaIxCBlNh+j5HFN1stR/0MBUKvfauUvmE=;
        b=xGweK8krq6y7DyAjxfE6SKfxDK6lHxCBhA1BJsxNcAhapo7R5zbb1/zAQKGZT99WJB
         9d6AAl1UG8bsKm2rfoQnfGb7ajehcPXyNGTA5Z5Tx/nBNNiiLl1vPV+ZqFC8DAk6U37T
         RaFK8YoLwufnnkYNWRaaXCngOhm3w9Mmt3p2JTyi42bFIU+ehJATwmNerBqukSeHLw1e
         +e894gjl/s9BQwsPotkw3aKjlelP2sckuk4Gh3TRRKOG/RmschzVotBkhLOdxfBn86Zu
         CTTQ5yu5PWcw50NBdAWrVdJYV0YR/URB57LFfzDA+195dEig5hyt2OzO1jMVckmnnYJI
         bTfw==
X-Forwarded-Encrypted: i=2; AJvYcCXpIN7gBPxSBhhrvq4Q9VZJAk4yDdQVCLg/hhHEVDvtPZbLQDx4zEXNs5nDSd3GPCKYjvI0a0xLhafdLOa3K5MpnA2Ab15JOeh9
X-Gm-Message-State: AOJu0YwX7O6J9uNs0RrJt/9ipUbL8RelnKwvZjYmUfhp3IoL10AXbWKr
	j9hByE0Eq4dVV37pxcS2xfQTlH0Oay/Oe8md5BNOvFQLMJLFyfTkJEk8mHnbKiI=
X-Google-Smtp-Source: AGHT+IHj1CmyuCA9PQXdnwL6k9saRHi032nAJqU0uYfDnEIpkMHrq+Nt9Ce0ctJQeArIAaWr+tDFUg==
X-Received: by 2002:a05:6214:258e:b0:6b0:738f:faf1 with SMTP id 6a1803df08f44-6b2afcdce8amr47716686d6.38.1718386173728;
        Fri, 14 Jun 2024 10:29:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:3f87:b0:6b2:a43b:dc59 with SMTP id
 6a1803df08f44-6b2a43bdee5ls35030306d6.2.-pod-prod-03-us; Fri, 14 Jun 2024
 10:29:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUk2b0Y05B9RKhta7uIO7OV9Fc5u9h6LengkZU6+NKwW6mbkfo/XuAvUua3oUZelPoAN0n7KZA2QQ1qKNE/tPt8KIIxLajSl0czDIql
X-Received: by 2002:ad4:48cf:0:b0:6b2:1094:83bf with SMTP id 6a1803df08f44-6b2afc6db51mr31004666d6.4.1718386172942;
        Fri, 14 Jun 2024 10:29:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718386172; cv=none;
        d=google.com; s=arc-20160816;
        b=PjaE3BKx9iNYSHbVQLrZg9DJWVkGHt3yn+4eM+bm5XmaH1pXg/FFBst0XvTKXw7unF
         0kbE3wOMpUAUZgejIfzvK81KkrqHZ8Vq+gH2BMvJ/NmSrhKt3pVb0qYQ1lvvsN2o/d7j
         HsFGzcaRDslsXInQcy4AsyU7/+3FOAyzIX2n8WFvKsMsXlwwMkBkY+Lf5WEVNt6rIdqF
         V4LJWy7XMBxddEw109zui+Z6U+ZIokCxIOFQBWPYHypkkhVal++dv350fD16Atau5clT
         v9M85VKA1SXMfpgD8+g7hdjyIWxt4zwptAjDXFO4/vRK7c0KGFMgDOClLlSMXc+8N027
         gyHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=HQZhx+38aJH+019yvumUo12GlLThCtOzhoOZbxUoqaw=;
        fh=egCYbaVhLEDbDgD7NHRJ3aPzFufLHmM1Hfl4V7AEd/g=;
        b=CdPj8VfQneiZRX+QtzVTxFWgBw2ZhgT8DwQ3jJZuYWrwDLby3NAieDalgD9IAj30OE
         PGDRb+7cBtPYEmnwDXgCjsrGsNRGVtuS70b9SZkWibnAL17W0AX9814A5hDItpgaM3Fc
         s46fj/Vwtr0aP3jdXRB65F3FnaLHbmFjLcudGEogXu48NSquMU30F16e7VhFZJg2nubV
         P986X+i6KbZj4K/LT8N68AguajIHlou8pbvswGGiFDdrQMkA3jQWoilHW48rbAA6/mCK
         mRT7aIrrurVuU0JZ+sOJjT3E/PpnoeCsg24XDdd0+jvg9AQbqUMoAOp49uZMyoLnRKAt
         XCuQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b2a5a169fasi42565656d6.9.2024.06.14.10.29.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 10:29:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted sender) client-ip=64.147.123.148;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-517-ifpsABnhMJeszeCYe7e4cw-1; Fri,
 14 Jun 2024 13:29:31 -0400
X-MC-Unique: ifpsABnhMJeszeCYe7e4cw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AAF7119560B6
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 17:29:30 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9B4301954AC0; Fri, 14 Jun 2024 17:29:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 988061956087
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:29:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 13BB41956086
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:29:30 +0000 (UTC)
Received: from wfout5-smtp.messagingengine.com
 (wfout5-smtp.messagingengine.com [64.147.123.148]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-373-5sYBgCc0PF68panmKRNxLw-1; Fri, 14 Jun 2024 13:29:27 -0400
X-MC-Unique: 5sYBgCc0PF68panmKRNxLw-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailfout.west.internal (Postfix) with ESMTP id 25C561C000A9;
	Fri, 14 Jun 2024 13:29:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 14 Jun 2024 13:29:26 -0400
X-ME-Sender: <xms:9X1sZkMcMu9KjeSigKzAMTfClBv_uJVkCgxg68QbUG_ZhdvxOxXyoQ>
    <xme:9X1sZq9WdE0gOFTj2h64NETu-ZN85InLtEtEXNXWlESz_4sRuKvtB2PPClSiYw-Q4
    NiuGQQNoMhpzVMU-uU>
X-ME-Received: <xmr:9X1sZrR6HiPp6i_bQk1WnL_sod6Vkd0eeobYKHFT42Fm__0ax2VUJ11HBOaU0766lkXa0X5cQVIYDlcvwzpjsp--NMKUXsK0aNo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeduledgudduvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevufgjkfhfgggtsehttd
    ertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghr
    thdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeegue
    fgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhh
    humhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:9X1sZstiC9EO3-HyoQTEQ-5FCYjsJuIGOSJ83Iv8Dfi1sduO_KX0HA>
    <xmx:9X1sZsc2A5bL-pXneVt3E12PhMeHqodHCEgtlvCsLjsTBGEXzAKzMw>
    <xmx:9X1sZg2571SNU1v9tC3JLW8VwPEeGmPx9Z5PTQwJA0i3KdnjsfQoag>
    <xmx:9X1sZg8K7dp2oOJ8iA8nYHKes1SDTcdmPDx1_UqZtLDXTQKt8KYlgA>
    <xmx:9X1sZtq1_ZX6CJVgQf6henBE-Ty09RhrkTYMfjWepEeVAhedX4uyL743>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Jun 2024 13:29:24 -0400 (EDT)
Date: Fri, 14 Jun 2024 10:29:23 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Kyle <kyle@gmx.it>
cc: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-Reply-To: <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
Message-ID: <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.148 as permitted
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

Thank you Kyle, had never heard of that one. Shortly after I asked, "ddg" came 
back. An engine you suggested looks a bit like Google, but also not as 
streamlined as "ddg" What takes some getting used to is the next field is a 
reset instead of submitt.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

