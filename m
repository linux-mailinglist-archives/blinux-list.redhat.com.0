Return-Path: <blinux-list+bncBDNOLWEEUQCRB6NB4SYAMGQE7GQ32CQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3A78A2CC7
	for <lists+blinux-list@lfdr.de>; Fri, 12 Apr 2024 12:46:20 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5aa50631e23sf669648eaf.2
        for <lists+blinux-list@lfdr.de>; Fri, 12 Apr 2024 03:46:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712918779; cv=pass;
        d=google.com; s=arc-20160816;
        b=c9GT2kd8pBMhSnGGVOhOSHq4QkJTXYaHpIA9Y91fGxeNJwXXhK7Q0Z2g9ytUDgeYZt
         +oi9aivxPFMglU4yp+4HxMznd2eUimT6jN/2/CuVbARSpn70cb792KeGpA9DQG2We3GS
         2h4xmsSUlI9KO96ZioMj0oQGuLL3ozZqahreVisJUea8gXgtpw5NriTvf6W2COLSqSmp
         +Wv+Kk08Xzdz8FTnsEIScz7z8tqHjhTZ1n/k0zegvyE7PaWxelz0TLt1sESZlKmqIPEq
         HAiNx2YzTo+Wv+eMc/izX1Dl4MlNswk1kznK9Cbp1yTvJd8DzdKS94H8vzT9YGswpdLE
         dAZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=cWkKmb3h1MAiJmuTam2wLql1K1UNkqgwmi1ef1id3Bo=;
        fh=EKnYrgdX9wqURiNruJCapih2ibdUShfCjpgHFFYwJ4E=;
        b=petbEuyWQoONiZuLE5c6Lgf224iJaw2bUhLA0Bwc6xBNTjdKB/nBZ8cny8sMi3pvQO
         uiFvwi6Nsb9wG0bO8g4DkdSWxrId7Orl2RJRndMLDk9FFV06qeh+QW3FyxM7nzQ4iGYU
         QySw4I+v9cwAeyeap10xMCH0NuY1W6OxR/YFhCS3ZcTZp8aboiJQofAAPGqG6ESbOCdf
         YYTefjw88w0GfxxXrjK/3KAyU4aJUrj77rQ5ajqhJB9kLJvA91FJ9wn5ap9mvjFRNJt9
         GTrHkqJ7LhOSJvyAZ4L18UJN74LEvagLjW9JcnojqhYfYLq9whrxr1wZdebfaIqu2b8i
         VaOQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of aaron.graham.hewitt@gmail.com designates 209.85.208.172 as permitted sender) smtp.mailfrom=aaron.graham.hewitt@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712918779; x=1713523579;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:message-id
         :subject:date:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cWkKmb3h1MAiJmuTam2wLql1K1UNkqgwmi1ef1id3Bo=;
        b=jal6u4v7+IoPk8pyZPmPcGwHh6Ky5ZVhsgxhmfw9H2EXxnGXfy1l42jV/DyUQKhwdH
         j04qCKrC7QWBwvRjhbhFSP55BARXT3YnRuzlyC9DmhKHzDaz5Pc6E9LJZ25QO7+Dx6eq
         a+g6RVHpMRZsHdnkkAb1Cu2rBlRRjaxPdqaE+3o3CQD6TFzCzo9YM0EW4OsrjHinYuxZ
         hTZlVa+BGjXBEgcfjYfZbY4dpMaaWczYUkup/+m//+WScv6WWIRAmn6TrVIM/+SNxbuF
         JrvMnEmElTUovrZliuG6Xs5MmRaXL3X8XheoSWFrfKNd65IjIu1KDWswSBYQC7zBr5dj
         yQIw==
X-Forwarded-Encrypted: i=2; AJvYcCV8JRYfa8XXL/Xnvkumyb9VJmG+WZVLiFurQJn6r8JOguJLVkoJ8a9n2UdIMW0v28Slb9FsiLkJqSbNLg//UBcMVWYWhZdKJnHf
X-Gm-Message-State: AOJu0YwHd1gWS4EQSaxJQf7v177gFPKuJBIBN4cA8hyYu/V9H1e5yKWn
	+kk+yJaPcDA1z5OrxUbhitrVB1etghz7RC1ZTkezY5eNBnkEdjfys1PTuRXt7RM=
X-Google-Smtp-Source: AGHT+IH0Nd2yJXKIs64L8iU/gJedD0bzM/1rTTcEpTPba0hsyBGDsYF23H8YN4+K5RePmx5+uF1D3g==
X-Received: by 2002:a05:6820:1515:b0:5aa:4cde:7557 with SMTP id ay21-20020a056820151500b005aa4cde7557mr2521251oob.5.1712918778081;
        Fri, 12 Apr 2024 03:46:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:aac1:0:b0:5a7:991a:72d2 with SMTP id e1-20020a4aaac1000000b005a7991a72d2ls514871oon.2.-pod-prod-06-us;
 Fri, 12 Apr 2024 03:46:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXGSXv4vjVd9FfPhKnKsr4BkvGVg2OzYXgUQBwKxeDbe7pImW+7ArCk7bNCgpIv1pKR/tst5LGEWn4nbUyLECeItCHM+MWjSHbwS7d3
X-Received: by 2002:a05:6808:1487:b0:3c6:f628:c2f9 with SMTP id e7-20020a056808148700b003c6f628c2f9mr1040420oiw.47.1712918777052;
        Fri, 12 Apr 2024 03:46:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712918777; cv=none;
        d=google.com; s=arc-20160816;
        b=keV65AA+BjMPB1kTMz27QwoURN4fsZXNSHh55l+sAhSGwEaIO40SKuax6O+5Tpb1LY
         PyDBKFN4N0YDwydDTYOaMWDHoGDxuqs7WWqhEJzUYa9oDWCbmeX43aHRjnbhGq57EJLd
         ijy8x5OS1E+Bz4Kb6syAifeR+jg0CbPUbcn8rD6fmDuwlovosw79/3cvQ23XQBMKortB
         Mqh8BHi4YSV89DgVxS9+F7bzSIjcEPmeISvaAWl/AZUl6WeEPv8Mf1Kt+rn+9EyNmsLp
         s7d7qz5x50wcHn/UxQSvB0emb+fol88Uyc2nyjp6g1Z5AofXaNHicaa9VBT5xLIgkKpu
         5RHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=rtq7C9R903jihVEQZ8uNMngBPPfuv6PZDxsHxMxCBVc=;
        fh=uwFpAPE7cuwsfRs67Oh4vVwsiabbegG/m38cKguHnXk=;
        b=Nnj766JvV40MQEf29PGaHoPyb5ubgvzpN8KPYdlxHcPKnHSGTLIvzAnRL1nhqw+sP1
         kOZw6Y6piO8faqkKybOzYDmU84IZvypneEIijupPfIHKpc/VXGMlGOkokrsJiN+d0d2F
         67RxkoB++b6A1m8LpN93uahB9M5y91SlOw2yzvz7N2N+lZU29/OlpwX8nR62FBO0tPd9
         fnvHk4lJPYDNmoh9K3MedVvRb19Byyt3UUlzoxV+naBYUAZvZC9TNmGAd8w1gFjawCjR
         UQVn3fEZWIkLq+OaR5+CIFV3WYlBbkCWj+fRv7lVNw21o7w0ZRpiZYw27804AdYrXv1S
         TfFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of aaron.graham.hewitt@gmail.com designates 209.85.208.172 as permitted sender) smtp.mailfrom=aaron.graham.hewitt@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ih17-20020a05622a6a9100b00431500fd3fcsi3057091qtb.372.2024.04.12.03.46.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 03:46:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aaron.graham.hewitt@gmail.com designates 209.85.208.172 as permitted sender) client-ip=209.85.208.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-262-uQVI3430PFGI9Wq484CO9A-1; Fri, 12 Apr 2024 06:46:15 -0400
X-MC-Unique: uQVI3430PFGI9Wq484CO9A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 375291887314
	for <blinux-list@gapps.redhat.com>; Fri, 12 Apr 2024 10:46:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 34456C13FA1; Fri, 12 Apr 2024 10:46:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03436C13FA0
	for <blinux-list@redhat.com>; Fri, 12 Apr 2024 10:46:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEC641887313
	for <blinux-list@redhat.com>; Fri, 12 Apr 2024 10:46:14 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-a4oXmH60OzC66j9Bv-4Ogg-1; Fri, 12 Apr 2024 06:46:12 -0400
X-MC-Unique: a4oXmH60OzC66j9Bv-4Ogg-1
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d8b4778f5fso6139751fa.3
        for <blinux-list@redhat.com>; Fri, 12 Apr 2024 03:46:12 -0700 (PDT)
X-Received: by 2002:a19:ad44:0:b0:514:a821:a020 with SMTP id s4-20020a19ad44000000b00514a821a020mr1414864lfd.26.1712918770537;
        Fri, 12 Apr 2024 03:46:10 -0700 (PDT)
Received: from smtpclient.apple ([2a00:23ee:12a8:4e3d:b5ac:4ef8:efb1:40fe])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b00417ee784fcasm2932056wmo.45.2024.04.12.03.46.09
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Apr 2024 03:46:09 -0700 (PDT)
From: aaron hewitt <aaron.graham.hewitt@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 12 Apr 2024 11:45:59 +0100
Subject: How to make Orca more responsive?
Message-Id: <D278A087-4477-4DA9-8198-FE49DB2AFCC6@gmail.com>
To: Linux discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: aaron.graham.hewitt@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of aaron.graham.hewitt@gmail.com designates 209.85.208.172 as
 permitted sender) smtp.mailfrom=aaron.graham.hewitt@gmail.com
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

I found when I tried Jenux a long time ago Orca was very responsive.

I havon't been able to duplicate this since, on Arch or Debian.

What tricks are being used here to make this happen?

Thanks. 
Kind regards,

Aaron Hewitt

Tell: +447447931232
email: aaron.graham.hewitt@gmail.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

