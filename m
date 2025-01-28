Return-Path: <blinux-list+bncBDYPVTOXSQEBBY654K6AMGQE2MIR2QQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA07A2085C
	for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2025 11:18:13 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6dadae92652sf110372006d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2025 02:18:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738059492; cv=pass;
        d=google.com; s=arc-20240605;
        b=i5O0xo0VfHaDpqVhDbZCNFImZn83NW4OUeW114zq2UN5RBZy7icFIWDWe59hRbVzyR
         ClUaA8YDA/55fKoN7pvZrveWbRwxyZrB3ehRoIUFUIO8j36nGjN05CMvt9YV6Ep8zXn+
         phJrjskzQrHBiqlKSjH+x5IPkshla7BRadeL4N89+ReDlExhJpGGqT38mVBLbJRqUwsu
         6zf81oCjpCkuXW2uQjsXl9ETv4+s6IOfrjulkFz4xREolDqbmphC2JRm/cSn94yJIaTh
         qV2+2EmvqeAg1U0MwfoeTX5YUbis5nUXhsGOTkJ5SGiPbMja/AbqEk+Df/y8v/QQK2Lq
         4tEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=KBzDV/9b62Z3YYrgN+GHdTA45UimNMfLmzFpWQJO+yU=;
        fh=/Vc0cRCYLEuL1ddkhXE0WZS5TNUut1mLzuSuddsrZIM=;
        b=D1zHJh5HCJB50DaDWcsb1BpAcc1hbQeskhasuBtsR9YBLhSwjVqvcfc9yGjYrii/sM
         +410FbPlW1dc69XUTrHK6z+BIGQD8hU0daRs7BWnzcK380kVTEoT2N8GmPLqSoORf6V4
         BaeZaEg5AJfMpFenh56c98t1RFWfivrxOoVLnpkIc9wkdyYzbY/mla3JWAPW2xOaCr0O
         l221NbP+mScB62IZAAIeM07S7eGIb+KM4uvgfIKqgAW1Db6NHU1q/P6ZEI/yHkbeARCL
         fg5aJ9E672xF09IuQsV3aBTGg/39xLmSe6ktAUDHMMrgmHI+2Xr30r86ZW4jXnn8ALyt
         XQTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738059492; x=1738664292;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KBzDV/9b62Z3YYrgN+GHdTA45UimNMfLmzFpWQJO+yU=;
        b=X2f4Oh9VLQDkU8vO+67W4ESfzfm18XPMrWXwB/NZYpPFDOKrV3PjdE4ZsRrtVZt84+
         I7qbNcAfb37X59gaMI4DFMIZsQW4lIWoSxL5/nC17JmjIYAxyaV4QCWMP4ejzq1/12LX
         of1vDeDcH2WmjmOclTaBUc2V5vunVx6BIA3Vdz2fagV6BmmcVDryVAG2I//WScIskLcF
         ipLshuJ/ejdKJ/u8Lzybk3rQACbx7g649uY2t1j1LKt4jAzmTZl1B7tdltY0CVyal18w
         EISxrfnyJKIcNXjRQPNsGogt6XugpU2eOK+khjp6skPVRMs0gPZtm+wdZQFkyypcWVFw
         +GLg==
X-Forwarded-Encrypted: i=2; AJvYcCUhsSYWN9i4kdJ7PWdz65Z65gpF2VWrcJAoYGkGMu7wZ1VJhfN2HDDJVFUX6mrLt3aEqqrT8A==@lfdr.de
X-Gm-Message-State: AOJu0YwMb62/aeWKAPtUvKMr6HrtZk7fkvuqUMBPbj4MDQvjTOXwROL+
	BCrqpdaP+4nomxpr+I+67z6+B/vtsh4TI+opzrTGzIJ8D40xYOf+mrMlRUlqaWs=
X-Google-Smtp-Source: AGHT+IFLdg70YJzp7NgqW7CAg28PpAySxy/x58oXSqeQtm477SOSAjo8MRf9xOQSz6FI2EtHaJAlXw==
X-Received: by 2002:a05:6214:5091:b0:6d8:850a:4d6a with SMTP id 6a1803df08f44-6e1b2169877mr622670986d6.1.1738059492032;
        Tue, 28 Jan 2025 02:18:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:a812:0:b0:6df:8164:cdb0 with SMTP id 6a1803df08f44-6e1fa2fbd8cls28447476d6.1.-pod-prod-06-us;
 Tue, 28 Jan 2025 02:18:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWRzip9xEd8Dp1c3Ua8sZtRfGCFMLzod0lydXceil14XrVDdOqh9vNq1CRbj/iPStRGdUOdgMWsxx3S1w==@gapps.redhat.com
X-Received: by 2002:a05:620a:40c4:b0:7b6:bbe8:7d6e with SMTP id af79cd13be357-7be63248fa6mr7411079185a.40.1738059490766;
        Tue, 28 Jan 2025 02:18:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738059490; cv=none;
        d=google.com; s=arc-20240605;
        b=Y8P1ugX6q7y0R7iONBTwA+5T0k4K+uyeSqDQbmj7z8J5hXUDpe48/d3IT+Ifkx4ch/
         RewCToFf1TanbYl4TVT5PeAoxSix6k63aJaTZobbnHIue5HoNjeuYxCSgttgVZtjXk1x
         0ys89uX1Vdgh8zi14SA23OaXV0rYmPOLDMI3n3NeWpCuveFNWOse7OA/5MNNEUzPEOnE
         +R7UyOGVMYeseunivICTEm3rU4jBxstPEZZezZzWaFaEv+1XE1dImHjJt/ZGVYZnzShJ
         oq5hlwZILK/litX8xzb6JpKGRgcEGA7xsUPYXpF7mVo8CQ/H7XE0WimYSGv9EcOsy3IN
         t/Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=Bi3AIpAHRbpxvkFRHy1Hg9j6E6yAC5r5pJGr8okI5WI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=lDCMl06OivFpTogXSww4Z+o6ChEZ5qs1tQvpTfvzpqEcu9SgmqL4YLxZxdAm71C3Dk
         TtvJf+1fwkkgVlHIhdorx1KSRCZKkJa2CmR3XrkZZSTT4GY2X4ZFvJ2IvWJ+gRV2xN76
         yNwbUDnRgcFG8yCZPHFFT0ZH6xGBNK+n/RTJfMiKHYani+m0H2PrWAsKmF19VqTEVdKO
         y/1YPYVN6ywxOz3rcW9KqyvAYdGl23fJzUWnC4NY1pz8TaQkhi6i/h6FsJhzw6sIqY4M
         4o/gnC2QhgHMdigfv2P/u9aqNN1Mva+5/65VXFKStagFv6vol3eCc1QER39LN7OSHRva
         ABRA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7be9ae843absi1143787585a.30.2025.01.28.02.18.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 02:18:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-530-plD4I5XPOUCZ6EZjJy0UPw-1; Tue,
 28 Jan 2025 05:18:09 -0500
X-MC-Unique: plD4I5XPOUCZ6EZjJy0UPw-1
X-Mimecast-MFC-AGG-ID: plD4I5XPOUCZ6EZjJy0UPw
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DE3C7196E05C
	for <blinux-list@gapps.redhat.com>; Tue, 28 Jan 2025 10:18:04 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CFDF51801436; Tue, 28 Jan 2025 10:18:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C881D1801395
	for <blinux-list@redhat.com>; Tue, 28 Jan 2025 10:18:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 21A30195608A
	for <blinux-list@redhat.com>; Tue, 28 Jan 2025 10:18:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-139-KrqU0pSANryI9UUi_gc0IQ-1; Tue,
 28 Jan 2025 05:18:00 -0500
X-MC-Unique: KrqU0pSANryI9UUi_gc0IQ-1
X-Mimecast-MFC-AGG-ID: KrqU0pSANryI9UUi_gc0IQ
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Yj1Sl5y9tz3y41
	for <blinux-list@redhat.com>; Tue, 28 Jan 2025 05:17:59 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Yj1Sl5rXqzcbd; Tue, 28 Jan 2025 05:17:59 -0500 (EST)
Date: Tue, 28 Jan 2025 05:17:59 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: arch
Message-ID: <Z5iu13C_1hmkuKvD@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 2zsWkHNnmKMoh6jZdW1KfP1ULXYWXAxLrkZd_vzexkA_1738059480
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: QJJ5oYn__pTVAJIIe98gDPAyjqLuBGBRNvdlsjcjKZg_1738059488
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

https://archlinux.org/releng/releases/

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

