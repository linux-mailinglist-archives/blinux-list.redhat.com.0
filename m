Return-Path: <blinux-list+bncBDYPVTOXSQEBBZU67OUQMGQEORSPV3Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id B34657DAE99
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 22:32:24 +0100 (CET)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3b3ebbbdb1asf6067236b6e.2
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 14:32:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698615143; cv=pass;
        d=google.com; s=arc-20160816;
        b=MwFJsMO/KgbzuzUPuSGavyA4cNNXapcsvrQ6vP2eqkKzwYocqj6oN0vbAk5AMRDhTX
         KlA9EEt9gNkBJFiBsz7GYtLxnsvoexcxWsJd8Qy7R4sKt6fPjccBmAljd5VWGh/w71lU
         NAhveI5zUbJXw478w16Z45+B1Bdjyj+5JnA/oeYceA1vqFEuBRpKHnQsCXZ0CTCVEacJ
         COg963HRHZJWiqe3XtWAlgeB4ygUQG9Pt7ZdIdxn0CZ4cTLwP/fjKGs1gAI5IYmu53Tx
         fmqy+vCjf52Capu3V6Z1gPMeCpz2KVuMzYC1kIlnl7sLN6I03mhE1iKx/++SJBzjTz6M
         yWZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=ILnO9ibcRhKQ1QNwtf8OUsv/1+d1gNDpegiuQfW3+Bs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=hkxTe036viWVaRzy5SizrdyTcnZ+ZSayt1qezMzG6G7iCxjHshEpAK1dnCCfPHH7cR
         0Ra8QVcy/7DrknPDtn3cyH+kDBGg6b7KIYJM60xuk3t/Y/ZeA0VLiYXfR+rMvNMAcb6F
         KvoIDdjvjOQSl5PoA8SNiv70mDl0e9fS+/YvEtaBiaqMIrJqhihF58jHPaKF+GWmJHLi
         0mWs7OVKwNUDj1sN2dYyi6lLGF5WL6iIKbjX5gAvUcwR2Xt73Y0yzJ8KLup9ALeG3Bwm
         d1KgSYowXsfkb5tElp720QWSI99QRsPqKWmU5rNCZ3NMoZ7By90egNAT/W6KLEYBvf6Q
         X7Tw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698615143; x=1699219943;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ILnO9ibcRhKQ1QNwtf8OUsv/1+d1gNDpegiuQfW3+Bs=;
        b=Ro81XEJ5SYt3u366gskUysP5bfhTKPSMqyMFjJWwg09Z0j4xhUY4w8UGjuwRDBIJ/V
         UW/dRicRqqZrFJmf7CCpN5XW7XQRq2zWXGTbfiBqQlTQhJlgypC7HeaY5owTZRxvuzIU
         fYwSAHHS0RpNuJnRU+9HeWTknhE0J8e0co10m33TE8cmXX1jIRnmearEgXcRWYm9Ljny
         px5GOIDY9zrdpy1S7a41LwtJPYeCYX/dRloSPfMkTAfBss55+sNQm+r6xOPNEQwgIyND
         lrslETGkyBHkjoysJxCO5BKCv8Jdb7REAb9hNKthxFnSvWANYiRN94awMRLKV8OpxZjD
         9yVA==
X-Gm-Message-State: AOJu0YxXwzVlbiCa8ziGLT59xdWKU22b/Y8qPmHP/86QwQnjdGYg0VmY
	oqZ4jKsA5nULKVqXcps8bWlmkQ==
X-Google-Smtp-Source: AGHT+IEpNmx2iNy32bKRXxAf6aD6efU5WbxVmFZr/CW05HpeMDZbEd6i+7xLairPH2FLzsHYuxj5bw==
X-Received: by 2002:a05:6870:4c05:b0:1e9:d158:2465 with SMTP id pk5-20020a0568704c0500b001e9d1582465mr10327582oab.17.1698615143121;
        Sun, 29 Oct 2023 14:32:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:8616:b0:1ea:d76a:4f02 with SMTP id
 h22-20020a056870861600b001ead76a4f02ls624360oal.1.-pod-prod-03-us; Sun, 29
 Oct 2023 14:32:22 -0700 (PDT)
X-Received: by 2002:a05:6870:1382:b0:1e9:fde8:d540 with SMTP id 2-20020a056870138200b001e9fde8d540mr6432752oas.44.1698615142527;
        Sun, 29 Oct 2023 14:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698615142; cv=none;
        d=google.com; s=arc-20160816;
        b=JApVibo2Osl6wkrWcff6QwZhu1cVSjNCGmRyRpfdK64E1Qgj3loysCGX9vLpFgn26J
         C/lMan7W+JkjCtJQ2bqmHUXoijBGd6M9SFOnp6RO1wDIWRWw82WfCE22A99rHTtPYfwZ
         k1mXTv3nYsrOrpIHRC9jUInFL0Ma/o3b4+4gT4+/hxu/SS8wBbGObq8skHNvH928eoIT
         QWOzxFQAJchzEwiRzbX8QxtXRa5/95B0MwMNf4gJMZ5QVNaTBmjVGrPozQVrkLfB+8Sy
         x2UVKhnWnNhfNNyBlTLjLYT6Xmodxhd2ZaJu3t9xSVGgv+wni/Y36+TKTKkIrWfUlWh+
         4DfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=YpxxjfkNXj/VIQABiyaEGgbDvsiSt8TOJejQO/Fddr0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XPVZcoCxJDNm5kN/WlCX+UtIyu4jU0soYnxXDwpIk0HFVNvRB2tS+EohZTzs0X2F+u
         CoThQbZd5JfXQGjRyDGvM458hbpxigE+/hNmyQPDtk7oJzBB4ybat/8MRY0YYaxlyjXq
         5BtP9Lg4Mue9Z0Ol5Iid9YUHvdn3/3mY52/0yiwR+Gwg8A+eiMHPavWdkL88NkLnRuor
         /Hy1/fi6tIZdEW4VwwuoRRAkYFUko6H7/p5f0NmujqB+idOKbtI24MmoGDHqySIf0vTT
         /a9hg3Z9FhXkJPf5xFMjWVk4YMS4wX1NUdv6aKHqR5GKVI9yMMS2qRUk1gGnm3yPtIzo
         KuNg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id d21-20020ac85ad5000000b0041815201c4bsi4686074qtd.12.2023.10.29.14.32.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 14:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-471-_WhxZ6GUNyuDvqpEouG2XQ-1; Sun,
 29 Oct 2023 17:32:21 -0400
X-MC-Unique: _WhxZ6GUNyuDvqpEouG2XQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D769F3C025C3
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 21:32:20 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D3E601121318; Sun, 29 Oct 2023 21:32:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBC671121314
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 21:32:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9C9C3806714
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 21:32:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-498-wfOfZ_mBPI-Q5vXFbqCKCQ-1; Sun,
 29 Oct 2023 17:32:18 -0400
X-MC-Unique: wfOfZ_mBPI-Q5vXFbqCKCQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SJV3k02sgzlm8
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 17:32:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SJV3j7045zcbc; Sun, 29 Oct 2023 17:32:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SJV3j6vTDzcbC
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 17:32:17 -0400 (EDT)
Date: Sun, 29 Oct 2023 17:32:17 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: archlinux multimedia difficulties
Message-ID: <718e5550-47e3-3966-b544-8888398a831@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
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

jackd keeps on erroring out since this computer has a firewire port and
nothing connected to it.  If some way exists to have jackd ignore this
port or not complain about it I think I might be able to get a little
farther than where I'm now at.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

