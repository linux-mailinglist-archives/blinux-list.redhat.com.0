Return-Path: <blinux-list+bncBCLPHQH4XEIRBM47YG5AMGQE643VXBA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id F10B59E3A49
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 13:48:53 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5f256eff5casf1650084eaf.3
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 04:48:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733316532; cv=pass;
        d=google.com; s=arc-20240605;
        b=WhjD6Kqsv5nRzIKfH748T+7rOkwC51hqx9f20PEQVgwcSk8BhJA1ID0YMFaFvZttzy
         55JiVFf5u7xRCNnUpehgQnJYxqlR8ku7sMkUEHZwcDCdH+ijR9+1mpJyGTgU+RBRMq6O
         qp0bUJBM7RlVO680GXW2WPInrE2PYumaxmHR4QinNLl+/cti9MIjtpLJYWPsjKdWHmV2
         LdCSeWFANBdmnebWEECdtfM0sc3Gp9phsD1qcejPjazm7YQRCusEmatn7+zPZfFRvRzT
         3A7Rg8o6bQ7w9F2k3tZmzpRPfKb7bxu/Xvq4eyGXMN8jhz6m3mAGvyWrwrUcEhTxG/fB
         lcKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6ReuuXX7ctJ1JO6qDdhuEGk5FI4AkKuVOOSp3kfZCaU=;
        fh=TkJcuBdcxEoc9OHFi3A3zcemsSj4+ZRkH2UE/3xjB0M=;
        b=fqJoGw/t/h/OxflNSeTJYt+ifhhKfG4x+0fzNtFmaINoq0+uuaqOKHgfnhR/ranUyt
         BG2fs/vBW/hC743qXwtEvxnDAZ6moSQw7Vfsrx1i47q7YUZqxvxH5QsqCQTLLrNoFy6Y
         jaIR4yxGJsGYcwLFV2Ep5+tvDcAVv+Psvrj9QLiCmg4qqTY7ekYPjIsUwwo6NNqXICy7
         bWHWlVi4MJ1ue8gnR16yTZw84A5Nf2o8pAoSlbFejAielWraDT4xVCWa3D0GdBUp7LGA
         hKhX6gvoNXybxnJraQVEbloo0DB0eFeck8ApFxYaQdKQC6ptoSPzcT9GG5WQOXGTb8gd
         aynw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733316532; x=1733921332;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6ReuuXX7ctJ1JO6qDdhuEGk5FI4AkKuVOOSp3kfZCaU=;
        b=fptBb3VDZWjhMHZkxtpWDfD2gEIQNNbomzP1eNaXWPTOmm8Hs/MHoyij7l7wNht6kb
         pU4FiDRyrTbTZ8xFxHVrAm49tc5a+4a7nnvlnI4uROQazMYLIONMj+TuZEZts36iQQm8
         ykXPlo1dq6ZOCvC35yU5WL0EMCoNxRQyqumHNNMUdVMn7gLOqZczJb73/S6UKtnK3Vgq
         Vti/NIUw6QS2uTozF6kJUNNdnTj3S4NAL7uHqzkKPwfXYmyRQeLkyORkC2Maw4GaJt9D
         t9Sc68FXx64lh+rvtQ9lQZUeFAIwkqwu5dxbRYcy6Z/UTSji7iIQZFie0Pcsef3HubWc
         VIBw==
X-Forwarded-Encrypted: i=2; AJvYcCUDrAedIi1Fm6K4sZKS6kdSLXOk9qJEkziF6r0OsDp5pjE//Gisel2tnt1wWMgPMfDLpnaUPQ==@lfdr.de
X-Gm-Message-State: AOJu0YxsGRKNCTb788hlvmVaGzW8QdYJcM6n+XHS1RBxIoU5zznYmyi5
	Xp//RS45ksHFGvCDi9/kbpUh8NXVP2kuuH2NjDbdMLe71dt0aYRjX0O2d6IJQPg=
X-Google-Smtp-Source: AGHT+IEX5nnEhjYU7izn+eA4ynbThkjgEGczaIZgroF3vPQd/ZSWVD0oqFrwhoCjdsuJQbrrACCEqg==
X-Received: by 2002:a05:6358:618b:b0:1ca:a091:a74b with SMTP id e5c5f4694b2df-1caeac4d938mr490722355d.25.1733316531679;
        Wed, 04 Dec 2024 04:48:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d16:0:b0:463:1398:12c2 with SMTP id d75a77b69052e-466c20c057cls94627571cf.2.-pod-prod-09-us;
 Wed, 04 Dec 2024 04:48:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVPwh/4kWUwxOWZYiykuM870qfOe2Eei2TkgK2Bq3QNxanYxetXPd4DQSnxhciTxx2i4jZSAsg1v+Qb0w==@gapps.redhat.com
X-Received: by 2002:a05:622a:1212:b0:458:34fb:5d59 with SMTP id d75a77b69052e-4670c0a8e0cmr88115121cf.29.1733316530498;
        Wed, 04 Dec 2024 04:48:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733316530; cv=none;
        d=google.com; s=arc-20240605;
        b=bjk37KMQAJGuP3hWoju7VKizQdqAQhOFR9aIMk1RV68jDO2fbgLAin9ag+T6KJB1gF
         Q3DN7+McTUngkxLGXy+QjNPoyP04tAkthhMMF9OE3oqIGQXydqvsKytctL5T5XIUewYu
         uh93SgNZ3PdJpjxGPrnJedH2A+82/Ekwgc9JAN9ajVwLmYmMYPafHA7wrRpSDzktuJm9
         j0aRqMXsgdv8vn3+zu4t5GkVLlAzZ9w7nPipI5nVAt4jB0m9YS/N3+tcPMjInpWHFcRv
         dojXfAvWT76d2xhVX1inCPCUpMAE+NKEK2cyxl6YqZiELQEzCmhP8WaZcgZ7QSUHSFe+
         vRXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=PFwUltp/D94NiEcRrLIX11Xb/QeBlrzSwJVMXQuGKw8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UtdY45OdVV7V6yQl5nQSu/ajxfC/a7wA5T4efP63OvCNg3Ahc76tdfMTnOlLh7Z2mc
         TcVcFgrfE6wXf8g3h/NHUdeUQp2D4U+r44pX5xXU8BtdvN7LoEFXAJDOdeCPu+ysUXg3
         JW5BQjnH7VnbvLxZrxqWlX5+eBq0dn5sRt8nGa/eUrv8uRTWB5AfBuwpqTYI/nSr+KNd
         GVI+l5K5xnRqINhoJWsV/rttsqoE3bjf8o97IEU+yV8paPPFPQcy1Yfo4yb8YBBLdOE3
         kroqN2bIWU6X0mhhtmAbTZYm07oAy+zJC/1eBpSzN8wRJuSP0by2BJacTQIWuOLyHEf5
         ef+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-466c40668e2si171389091cf.147.2024.12.04.04.48.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 04:48:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-446-zns2tvHZPYmS_O4F--0AsQ-1; Wed,
 04 Dec 2024 07:48:49 -0500
X-MC-Unique: zns2tvHZPYmS_O4F--0AsQ-1
X-Mimecast-MFC-AGG-ID: zns2tvHZPYmS_O4F--0AsQ
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1B8581955DD6
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 12:48:48 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 15E5E30001A1; Wed,  4 Dec 2024 12:48:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1372E3000197
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 12:48:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A51EF1945CB2
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 12:48:47 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-Ry9CSWbsPB687Rm1ZQB7pQ-1; Wed,
 04 Dec 2024 07:48:45 -0500
X-MC-Unique: Ry9CSWbsPB687Rm1ZQB7pQ-1
X-Mimecast-MFC-AGG-ID: Ry9CSWbsPB687Rm1ZQB7pQ
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 1BA4632082
	for <blinux-list@redhat.com>; Wed, 04 Dec 2024 12:48:44 +0000 (UTC)
Message-ID: <afb0b438-bacc-484a-b02a-da047665c1ed@jasonjgw.net>
Date: Wed, 4 Dec 2024 07:48:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Might 1 of You Please Remember?
To: blinux-list@redhat.com
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: _cfGdbVr2_GKWKZuvzxYPZUb6FORETtylBkvQvC1L0U_1733316524
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YMU0lm8Q2nah-Ykg-L2QmNXjXFHe9v92RgTY4q7nQ60_1733316528
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 3/12/24 19:27, Chime Hart wrote:
> Maybe 1year ago, not sure, some1 here suggested 2 trash programs to 
> prohibit accidental deletions.
The conventional solution to making accidental deletion less likely is

alias rm="rm -i"
in your shell profile.

Some distributions (Fedora, for instance) set this up for the root user 
by default.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

