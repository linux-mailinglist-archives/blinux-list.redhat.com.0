Return-Path: <blinux-list+bncBCFJ3VNT5EIBBFME7KYAMGQE3MIKPXQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id C16668A6CC8
	for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 15:50:15 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5a1d14ca2absf3882911eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 06:50:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713275414; cv=pass;
        d=google.com; s=arc-20160816;
        b=DIJx9dTFMvUY9abD2HBMKGB9tprui9q8XSShm1UL0L4m3D6D7ZOwSvaigVN8WR8+4Z
         NzdFZwXW6MHUID3kS/rFaSGij7OFvJxHUuyU+RY+hXcKS2Aj6JaZ/vr7wUgKWXksRTqw
         +KLVuowP37rNK+sUCJ2+xznuE+oho8llSiwW+EdU0D2/Mf+Z4hPSByE7ZE42mywlgq/z
         rvCDBzoAGBzD/HVMPj/JdGoJi+WlXNudkzFe1OCqCAObDtMheXW5HhIODi9LbqczGZH6
         4J5K+CpiL+LvN2OatKL+GKH4bK/xcwq7XzsLEeAjtkVnTTedkRuZZpSEnUeb7Rj4lrJ1
         kqhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=xDDMqwh35iMzWd5SWfumO1ojfbeVoH9OqRgj2f85gaI=;
        fh=ncvP//qFishW5zCt2VNenraIDxNqj5AQGWK12NA1rUw=;
        b=cyj9qWq7ICyQWfEeYnKTJFMhZslCFUsAlXobXiFZXsZ+Jb77k2MLymAJ8UBb4ZaWyF
         X7rZEXopjLbyiElaSbS2am0LMLkVC3UtJ7d07iwByo5VM4HyEgL+URn0bZMbvKLH5fS1
         ErnybWoZk5y67oUx5wEFV0zOecgLIhiZqsIK2ORdCQFtQnd1lztk3LJbSg5LhBP5w1KR
         VBwphATysh3bER/hD9Z6t4z2k9IYtnLGojgXXXQXmYa1qO4UGipXPPZkPPegnk2nK3hm
         TQ/nBtI+f7JhuMgbi0JKe2UTa/9fmr9bNzxzBU3vjdM0B+Z3lCoDcNaXqmuAxO9yiNmU
         7V0g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713275414; x=1713880214;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xDDMqwh35iMzWd5SWfumO1ojfbeVoH9OqRgj2f85gaI=;
        b=lDk9kACXR7oqgheU5lPCw+BjttzAbY/2+Zh06KJ2yEfxWxvU2OPIfl6PxfJeR28dl8
         wlcVn46TJWgdU5L/0ya7KUsV0S82Y4bCCz2EV0xj8K0PpYvoGRnEV/QGCP/yHt9lBzAC
         2Q3g5xq892zFFnWJP99+wRkkFRuc2RTKuJMTeZRPySgHAqecs2gnO7pO5Wbeef7n7OUn
         bFHNZYcwwIG29TX8nkmo49D97jVN8RWJZg6d5wJKrmii2JUoCWpvkXNfzkYCIbnopJfT
         xLWclupgn64VvFQHgHhgD/9c3I63s40E1/sNO8rIMkxU1Csb8sxIboGW33Zq2RbSZ0ea
         oBjw==
X-Forwarded-Encrypted: i=2; AJvYcCW9/PjzTqxdmclIBBO9odjv0bn903epcw7RHnzzfdVTYS7yIG5mC03lbTP6SV57ye5MFZMY0NIym7C2YgWrIZljmCncCQHY1Z7N
X-Gm-Message-State: AOJu0YzmA988pd805zXXLza2ZIIUe8nUcUtGrkYjA77doLLoCY2fB2eX
	wVnbVgo6HuGh8xhlnQVyU8f+FFRSJpQ4rpEMKvy/5fSFWvt+Uy5kaADTNqwb/YY=
X-Google-Smtp-Source: AGHT+IHz52bC3E0OIXxkfiwNMnY8IMKx/OV+3Fe76O37N/WJyz+L2W0NJy1Dr1/imyHUrfj0hURZ2w==
X-Received: by 2002:a05:6820:1e16:b0:5aa:6404:936a with SMTP id dh22-20020a0568201e1600b005aa6404936amr13579292oob.5.1713275414093;
        Tue, 16 Apr 2024 06:50:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1b84:b0:5aa:6bfa:65cd with SMTP id
 cb4-20020a0568201b8400b005aa6bfa65cdls3065833oob.0.-pod-prod-07-us; Tue, 16
 Apr 2024 06:50:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXEccnxX5kbGVqxj0VGvgX8CEzjUB/+SVun+utdpt7uuenocMyIvi0vPuVxjQ2ENsBaanAou75vFMiqZymo28daNODwzd1Ob6HMbBM6
X-Received: by 2002:a9d:68d8:0:b0:6eb:7d1a:1b87 with SMTP id i24-20020a9d68d8000000b006eb7d1a1b87mr8100586oto.20.1713275413197;
        Tue, 16 Apr 2024 06:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713275413; cv=none;
        d=google.com; s=arc-20160816;
        b=vjwTznTKmJJzOBP7RiXELinhEh5RV2FOucLAm8MEOZsDH9IQMY3GQUOtzT2AhgRlTr
         A13lMDA1UE16MI6M68hp0SSbCYumFhmwJaajvKZxhQcd24n/krJZAcLmHFqk7BaFcB3L
         Ec0XuWELFBRL6PHk0657YJk6vG8Sy3QMo3hquVyY0Vftp4kvsY9wRV2EJCfISPo2O7lU
         IRJTd4o5xSXLtLQ2GS2L9JweSigZAYC2hylxTfAFv33FP0Fb7MuSV2VP124iKUIAnu/w
         cR1LoFA0UiJYI6hiLF5A3CIN0rbvcFLlcMLy4OBj/we8CwY8DvJXUwYS743qEKh9KrNo
         +TkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=cY+pEcOfoDX0DHl8cctvGJhdSbYN+GK2LvSeYUo3yt4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=MHETZ5TpCMUufOgJIBNWEoRK9kmKwOD6E5swD494wzCqmtraB6dEXFo+v59zEibXr6
         LbqZmdyAw6HYELcraerC0dg7pPBY7gBIzi1nQCqu5081tn+yyNmbuLoooUNryg6hStsz
         DHUxzWl8SOsJA+HHW5TzpMAkD5K4beDmV26ifHQS+zD330jmuCyZCHufHDNba0qPwn2H
         RkxxL8aqM1EYpiMsqp3qmuqrOEHQGQZH3hsDfyWP48r/mdl8upa+uu0+G9m6fIrOCTyn
         SUz5P2hsMCODhlXPLbwT/+UDIka1r2HJi1j49LA3xuGhV9B58VyG8W0DPszwW5SrTf6N
         jHwQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id t11-20020a05621405cb00b006967ff1677dsi12237430qvz.448.2024.04.16.06.50.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 06:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.161.53 as permitted sender) client-ip=209.85.161.53;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-33-NudWw6rjOBeOkdkjECDzmg-1; Tue,
 16 Apr 2024 09:50:11 -0400
X-MC-Unique: NudWw6rjOBeOkdkjECDzmg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34D1428B6B26
	for <blinux-list@gapps.redhat.com>; Tue, 16 Apr 2024 13:50:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2FD9F2166B32; Tue, 16 Apr 2024 13:50:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA86B2166B31
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 13:50:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08E34801787
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 13:50:10 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-631-h-9JQHm6NGGAzScfy2xI-Q-1; Tue, 16 Apr 2024 09:50:08 -0400
X-MC-Unique: h-9JQHm6NGGAzScfy2xI-Q-1
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5acc9e07664so476723eaf.1
        for <blinux-list@redhat.com>; Tue, 16 Apr 2024 06:50:08 -0700 (PDT)
X-Received: by 2002:a4a:5b43:0:b0:5ac:9f5f:fbdf with SMTP id g64-20020a4a5b43000000b005ac9f5ffbdfmr7393707oob.4.1713275407119;
        Tue, 16 Apr 2024 06:50:07 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d19a:c1a8:c935:2003:e221:a93d])
        by smtp.gmail.com with ESMTPSA id m4-20020a0568301e6400b006eb79a40959sm1090013otr.11.2024.04.16.06.50.06
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Apr 2024 06:50:06 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: coping a folder
Message-Id: <B60FBC29-85A3-498F-AB59-FE948B98E5EA@gmail.com>
Date: Tue, 16 Apr 2024 08:49:55 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I am wanting to copy a folder named linux-a11y from 
Downloads/linux-a11y-sound-theme-master
to the shared folder.
/usr/share/sound

I got in to the Downloads folder.
I typed
sudo cp linux-a11y /usr/share/sounds
The linux-a11y folder failed to copy.
What might the reason be?
Was my cp command correct?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

