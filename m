Return-Path: <blinux-list+bncBCW5NIVR6ABBBUOGTCVAMGQE6ZGEOLA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5B67E0ED2
	for <lists+blinux-list@lfdr.de>; Sat,  4 Nov 2023 11:56:19 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41e16b279ffsf30002421cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 04 Nov 2023 03:56:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699095378; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOeKWqO5KLDxNYBFa573m+t3rjPaP6YDUGAy3UytK+fZr/OBKAwGGNNgoli/bUq/Vh
         ERwH2TClz4uHJWb94PVMdZ1wOM6LMhzfPZKzohI4LkeLKQUWVtfcd/nwN66XTlG6meXy
         Ud9vtfSa2vFlOxcNcLc/eMxHtBKkHKuC9CbNzTfOS6GcvQked1H/kY/s6ja/p1QthqAq
         hxGbHG1EVZzVDuCxb4DeUKBABw32lUmq0KHisIb+jwmFNEXK4LPqXQWUv2MiN5c2G+Bu
         bO8yCIcY+FGxK15roa6gsyGNfxQKOr37ZOjfi8nMi1+RzlXvYbg335dpYRbsZfsSn3dQ
         LNaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=ITrgqg8tX1zN79AjqwoQEb10DVHOD9BbaYDqN2V4Y1E=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=bpU53+adF5VoToiaiA8X9Egx8nCQPsoztNr4H28/I0mSEoxV9xIbd67sJQWjbnkG+0
         ezTq407GjhWp+jbbSjESkuXf6mT9sVwbTRkv9F8XNy+Kb9tHZDXc+Rm6u7YGxlHXmp2F
         cU9gca8+fJaZ8jLTHwLanMGAjB28hW7DgUwu4Kq2lHV9iQ5ft4FyYNjuRqUvbbjRHsoa
         rgJwfBYug+f99xbL7icpzoR8r+opy2QHpVKbI+8e/GkP6EN1oiE00BhUEXj2pUddirU8
         EPnNnBgzHXgOKlRp1mwCQ8RLIei1Tv0f52t6BWsIK3CSb+e1umH7E1oHyUY14UKwC+Sm
         RxeQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.54 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699095378; x=1699700178;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ITrgqg8tX1zN79AjqwoQEb10DVHOD9BbaYDqN2V4Y1E=;
        b=q/FisXiUNs8+QOjb6xvtxKtZ+nHQmMPtQELeA9h8Whty8CH2c8P368wN0oEFRjlNDf
         IYU/JucRMHAkct4ivI38ttMrq4Uzas5GwTLnpQfU+T5bdGDonuOGnkt/z35wIsMZnoQd
         k07fBJgeg0fDoZa3wVoIsrzEOXFMpDGEPczCsSXa+wRuGlu1Dqlh0EuTYMGy8UkAsna7
         5id8aOL/wdPMJKBmY+0mxE6L4XNIE5K6BnY9iP0kW8WPuqgKF8lTKTK2GOabzEi5r98c
         yGLJGeGgFMq2aOU6/6HQDJaB7Ko/bUhccmoj7V17Vjv46I3l3ifF1Vi2dW7Gx+oRqFCx
         uWmQ==
X-Gm-Message-State: AOJu0Yxjd/vJRjs734qWGws+jQGCL05j9N98/ZhVZY+s5oLdNGwRU5O2
	4avf+4VFVSwDjPzU4sFvOB1USA==
X-Google-Smtp-Source: AGHT+IHv6kHhm7SZwPzj2T3Ob9YId4enlEBkxCaS4eQzh3O8BczTywGzWcDKXnVRVQJ3Qgk4/qalsw==
X-Received: by 2002:ac8:580c:0:b0:410:8cb9:8dea with SMTP id g12-20020ac8580c000000b004108cb98deamr28991238qtg.6.1699095377730;
        Sat, 04 Nov 2023 03:56:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4a18:0:b0:41e:89d9:f2f1 with SMTP id x24-20020ac84a18000000b0041e89d9f2f1ls2410923qtq.1.-pod-prod-06-us;
 Sat, 04 Nov 2023 03:56:16 -0700 (PDT)
X-Received: by 2002:ae9:c119:0:b0:778:8676:fd4 with SMTP id z25-20020ae9c119000000b0077886760fd4mr22807866qki.73.1699095376697;
        Sat, 04 Nov 2023 03:56:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699095376; cv=none;
        d=google.com; s=arc-20160816;
        b=pYjBSQ+UoxzKwVF/BfTMttyPSIPzxTen7spKYtWUAUqTEaHwQpP4/nOsCjZlWnyvlX
         F2n+KcNi5czlfZKfS18kHw/7elYJJZD/GdqK+iOnkHf/zjm5TzHc1AgAv66LmZduFGId
         UZaZKHJRmj2bFletKZC0XbT3bfltLN0FJGN8b/SQIesHdZuLy378bUU8Sy3gXyXLH3r6
         lb6N79plZt1qZZ3lz745j62P4CBn6VQ0ZIAwaQpmR802Qvzk2uQiLhcrsUHZkKxX6cEV
         9KMSotJSAPm95HeiAmJZTvN1zzWYK/RrYiS0AEadM3WjS5MiLz8JV0EJTgLYA0SxIAQ2
         AWUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=h3KsO7RXZU7LmKVWuszKl4e9J1zguX1tSyxnZjjaezE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=fnt8ZzNRwHw4Eo5mNwfue0/1QZX6eq1Zc8M9NVUJomOE6DepJjIj0lI8u76XqnwD+D
         51ziA0pQR3sz62pjEIQxZ16lmv1HeQgiA5wqP6MDltabS76bbYGmas73bd/+v+aqsuOX
         Ca44yRieeYn10HO35lwRlSVHRsYAG4IlnGWTdnJBBRAThYQ2F/ZqAqQ6efDT6w9mHpJN
         B+iEcgXXTOQRxZSNWKjhTuy5Wf7iSZl+qpNTR76+Ye7F4eMPF9CG/2vfN7XnrgLyBv3I
         /EMvCnjPyuKQ32xvvgbHTRN2FgP3U2Lpy+BKf2Wr1JBcM47A3ydlf7mFbkxgneOE5NdU
         0MxQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.54 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id w18-20020a05620a0e9200b007757464e7c7si2707595qkm.633.2023.11.04.03.56.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 03:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.54 as permitted sender) client-ip=209.85.221.54;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-F5got_MCNXOuBS2JvqvrNg-1; Sat, 04 Nov 2023 06:56:15 -0400
X-MC-Unique: F5got_MCNXOuBS2JvqvrNg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1ECF7811E7B
	for <blinux-list@gapps.redhat.com>; Sat,  4 Nov 2023 10:56:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1B6812166B27; Sat,  4 Nov 2023 10:56:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1335C2166B26
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 10:56:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E66FE3C025C9
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 10:56:14 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-620-AGRiy1i6NYqSQPlG88rG3g-1; Sat, 04 Nov 2023 06:56:12 -0400
X-MC-Unique: AGRiy1i6NYqSQPlG88rG3g-1
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-32d81864e3fso1642155f8f.2
        for <blinux-list@redhat.com>; Sat, 04 Nov 2023 03:56:12 -0700 (PDT)
X-Received: by 2002:a05:6000:2a8:b0:32f:7db1:22f1 with SMTP id l8-20020a05600002a800b0032f7db122f1mr19444965wry.60.1699095370967;
        Sat, 04 Nov 2023 03:56:10 -0700 (PDT)
Received: from [192.168.1.24] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id k12-20020a5d428c000000b003232380ffd5sm4100093wrq.106.2023.11.04.03.56.10
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 03:56:10 -0700 (PDT)
Message-ID: <d00cbf25-e4ae-4fa0-b7dc-69ce94ac9def@gmail.com>
Date: Sat, 4 Nov 2023 11:56:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Libcanberra in Arch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.221.54 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,

I followed this article:

https://wiki.archlinux.org/title/Libcanberra

I enabled the service for sounds during boot, I downloaded a lot of 
sound themes from aur and also from official repos, but not all sounds 
are working and my question is, why? Can I configure libcanberra to play 
all available / possible sounds? I don't understand, where the location 
of settings.ini file is located, so can you give your experiences? Some 
sound themes has 5 or 6 desktop login sounds, but only one is played, 
sometimes logout sound when pressing restart works, but not every time. 
I really like sound themes and I want to get it working, if possible.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

