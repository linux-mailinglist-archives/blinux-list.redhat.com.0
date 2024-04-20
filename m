Return-Path: <blinux-list+bncBDULHE7XYACBBYNBRSYQMGQEYQAYUXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 290868AB830
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 02:48:35 +0200 (CEST)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-61890f3180asf54251487b3.2
        for <lists+blinux-list@lfdr.de>; Fri, 19 Apr 2024 17:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713574114; cv=pass;
        d=google.com; s=arc-20160816;
        b=PftHnuiF2IGkAZFJkb1pI8YXN3HTkCbXiYYaKmoAqB3qzj8+nSCIf7cEubdGojfMwy
         rh0YFLQgBP2X/VTuJPkwX2My6m2Hx2gVad/98Bqp0bgwSrxCIRMHyN3KpYphQ7ZpGVhJ
         ytfA3C99+B4NhW8nDlXkN1Edhnmj4hap8oGScFgvKAHyHnJo1V3W6nHv95wbZLJiM+bx
         qz+ZkauRIiz7t2o+Ll0YLBMLCabkWIRm/R8J1eUSAN8uD2K5IGxltk1jq5tE1QaWOCel
         sZ4FC7JD9u/chS19nONnLSmglJbQU0Q3ixYhPiNy4kyXbHfnJ0rGLungUKcrl8JRwUEf
         xyLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=v974r9fX1ALhR8K9rR7PtgTj/Mpq+ZfN6Fi5VWn0rdo=;
        fh=XMQQKic7jTimR/lDVRSZr8b80axbHlLmhdmD3Rt1gwQ=;
        b=xOpdvZC6aEdbCiYmyhTqjqHyTp3PxPThsQlPM/fxf30t02Rollrodkx1gKln4/S6ph
         VK8h6WV+ItHeZ1xsdHXjI3xsTqkzUUBpg4N6qvuNrRqHbe1pS5IUFOB1jqyeXnxeK5cC
         lWdR2TIuSlZJwIu2kyZDgSALS4Hiwrz31YdMoIwHPoEYJ0Cb+ioZaizFxr5VZFKOidV+
         D6K/uc06Qoljcc0DkPSCAn6AgM/uM5TJL6bNQ7Cc6LyZaVHp+x+XNhhgN/snImh9DC+3
         hhkQfCVqTLgJlLeUl5Zvba66UdI8sRewe8iI94pr3Q5VVj8m7s6TdeViI6iyV/bHK8m0
         XG+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hank.smith966@gmail.com designates 209.85.214.174 as permitted sender) smtp.mailfrom=hank.smith966@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713574114; x=1714178914;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v974r9fX1ALhR8K9rR7PtgTj/Mpq+ZfN6Fi5VWn0rdo=;
        b=atqkhuNjl9MYXbRpc5SDK9PnDnvB3YXvSmdmzjikYuN6ptUAFvo0WIv2VUuY4T7xWl
         8/mRSRUpGOKvJUFHWxije/viECOxhznh5g1zF4Xs7OtxkgWvNxDBPE0ijKKoKeJN9k63
         h+MLUau3MliwovpHQIA+fYVbx9T4z+Vyp/y+JN9+1kpdM4ob5tpObISq586iebkbwsyq
         pG3sX72zK0UX44/aPz7ZIx/r0TORypJjXntrem64jDG/yB4tqufzJ6429nIUUP0pZvZy
         bpYl4uXGekrTu1y/AD70yVat3tmpcfnYqnLHVFyXqMlGt0V5lyJBL+7q0kBluv7yYsYE
         gnZg==
X-Forwarded-Encrypted: i=2; AJvYcCW/XqQ+rXhYlKdD1ZVQrQrFzjisaeU630ypFtmzCOgMn0qDkTB+AwoRZVop0528QgDJNwW7DRVTwbpn8KlUwx6MEuSJk5W3dKE9
X-Gm-Message-State: AOJu0YySA1T3lm8rsKS6A1RF6+1i1DOUhKvGKOesUpgclaRp+KHsAZ1r
	KUfSAIpYfJjX+JFf1sbyvXcX/jMrFI7PigRb2N8Ch70rKdhaAHUKthAP7A5Btjw=
X-Google-Smtp-Source: AGHT+IHR/hBKJQUphHQQpQZVqD9I1HVtXvioZdxmyBuAcnIsZ1iSc3b7lO/7YER8r177OtbuydMQBQ==
X-Received: by 2002:a05:690c:39c:b0:61b:c89:1e73 with SMTP id bh28-20020a05690c039c00b0061b0c891e73mr4337594ywb.45.1713574113587;
        Fri, 19 Apr 2024 17:48:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:190a:b0:436:8dad:fee9 with SMTP id
 d75a77b69052e-437bbc20e79ls17796771cf.2.-pod-prod-06-us; Fri, 19 Apr 2024
 17:48:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXPfUOS+a+rEF4n95aHQYDdlFyDesj4Q7ciZfRuY+efep1dJPcqFckhpAzgATwK038+x4u1GL9akET0ca0TzWEi5Jx+9IR44jN2JMZa
X-Received: by 2002:a05:620a:2911:b0:78e:fe43:2916 with SMTP id m17-20020a05620a291100b0078efe432916mr5356270qkp.38.1713574112649;
        Fri, 19 Apr 2024 17:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713574112; cv=none;
        d=google.com; s=arc-20160816;
        b=IUgiRD2yPHJDjoiVESsLE/FeyVTUbrFJGJ/ogTZknRyuhcW5x4UGakbIbbNCjgnbNr
         BV+C+xqLmXrE3bumzFCZequ2wK9itR0kIkGorR1WT8WsEcW2S1vq/5drm4DuayvY7in2
         gykCt8OgsKYhZubF7cDE9j881RrLUB4HeZx2qzUrFitpYiXEB7SNnCIOWU8Fhv3/Vgs5
         3QBOCq9NOFfoh8AK247qLG8oKznOdiih/32fpWMzo1U6Wy1V6d4EQpUUaRCVCLdPrGvv
         SMy+gTpJsYtrTrW6zMuR7OlZvO/wAF1XUNVTcIAyxxVSUgsFJhpba3AY5nv2DIwiHk4O
         54SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=x1So3mxQ97gupPJetnRRXPh1xLIEQfm/jsnF6rt1Vv0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=y9ES/uIJ0MUifiJIbKd7Ek2JBsNuWqeqJmgcu8sUgOWdjUGuIpBYft6jur7i7Z0yFi
         9Fg8oOqt+YWOPYImc4phEfCXr5ssnySFdiv4VSUJBd9+KQyHPTq2vlMLPvDP5I/xTFN4
         /1IuUCR5SfrDqSFVmMu7bT5WfJ5tE8FrMsmfL5zC5vsn6cdoRVmECnRJ7y+CKyQJUu8p
         zqqn5rhZvwlCw4IGA2C+ahk5gPAW+8A1baP0LvqDuXiR7Eg6X+qrTbQP1d4pc7ytfihb
         ui/HW0dOgnXLD9zQJ1st3TtsW+BwNDUAQr01I51Vlct9WDkGWXYpUkuSoGyNcIiqwB2+
         7qww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hank.smith966@gmail.com designates 209.85.214.174 as permitted sender) smtp.mailfrom=hank.smith966@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id f23-20020a05620a20d700b0078ee7907da6si5275998qka.342.2024.04.19.17.48.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 17:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of hank.smith966@gmail.com designates 209.85.214.174 as permitted sender) client-ip=209.85.214.174;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-373-8D5NOfBbO_yJ58TmOJPQDg-1; Fri, 19 Apr 2024 20:48:31 -0400
X-MC-Unique: 8D5NOfBbO_yJ58TmOJPQDg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5FAD810431
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 00:48:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C2D9C4026B8; Sat, 20 Apr 2024 00:48:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AA4F492BC7
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 00:48:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 384D118065AE
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 00:48:30 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-58-EQRIlDOOO_KFCr5mHNBVkQ-1; Fri, 19 Apr 2024 20:48:28 -0400
X-MC-Unique: EQRIlDOOO_KFCr5mHNBVkQ-1
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e2b1cd446fso21916165ad.3
        for <blinux-list@redhat.com>; Fri, 19 Apr 2024 17:48:27 -0700 (PDT)
X-Received: by 2002:a17:902:7684:b0:1e8:a63b:d427 with SMTP id m4-20020a170902768400b001e8a63bd427mr3953042pll.49.1713574106195;
        Fri, 19 Apr 2024 17:48:26 -0700 (PDT)
Received: from ?IPV6:2601:602:c083:adc0:8c02:649:cc94:7ec2? ([2601:602:c083:adc0:8c02:649:cc94:7ec2])
        by smtp.gmail.com with ESMTPSA id u7-20020a17090341c700b001e2a7fb6e01sm3966664ple.44.2024.04.19.17.48.25
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Apr 2024 17:48:25 -0700 (PDT)
Message-ID: <fa371673-1c80-4150-b198-608f078a1d0b@gmail.com>
Date: Fri, 19 Apr 2024 17:48:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: The wolf <hank.smith966@gmail.com>
Subject: attn kyle
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hank.smith966@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hank.smith966@gmail.com designates 209.85.214.174 as permitted
 sender) smtp.mailfrom=hank.smith966@gmail.com
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

Hello kyle

its Hank can you email me off list?

thanks

Hank

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

