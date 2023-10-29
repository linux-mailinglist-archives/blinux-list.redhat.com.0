Return-Path: <blinux-list+bncBCW5NIVR6ABBBW4R7CUQMGQEL2HVT6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id C69457DAB64
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 08:25:16 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cd46aa351sf46129981cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 00:25:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698564315; cv=pass;
        d=google.com; s=arc-20160816;
        b=L+u9sbrGvQ9VN07ISPnSYA8K/Q/pVcL4ZYa8M6qtzaSRiYNUhLGU73RnywdK0FNScw
         01VDxyqUJYfhIzuxn71ER3uKfsZU/Vx9803BfoQEoEA5ZKF9ykOBCwfq12yuCy0xdVDL
         pUFgqKBqJ8tKq1UlK46DNVchfItIWD0fT2Y0oAy9linvDm2yUNzgtrFBJNBjCRczrtJk
         CHYGhNN1hpH+ol0plaal3m/FOxhc9WUjuRCDtRU1myojpmL5OYv8zR+7j8Z789sNaplB
         P5sPZntzBC0Lc5HuToCv9Odnh6vSHNrhOEK2ugO7MeIE5qfHtt73HhzpkxUiaAkoAqJR
         zClg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=hU+GqO/BhYe8P0n+3eRGDDUiV69Sdjp3P2jsOf8Qahw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=T2/COfFRLaByq9W+OOZzlgmGGKlPrB78Kvj01HTPL6kMzfrQnQixVRtpjShXGULech
         Gx2yNMamPSowWEe0Q0z1myOpXhVXD5Y/luHqgjlc5CvUkN2N0wmc6fw6kZ9CCdDKg4ZN
         RtjsOKpH6WZXQmagVvAYmMKOGnxHQR/FJdKiBSv9ge/gVTxXAksUaSwJwFcy733jr5//
         WMDhYYEv7Y5qMuOqPhDygYddwa/86BPP3NquNnMGJ9s7R9VAvoUQOezmUL/vtpCcMpbW
         MGvhG8EYY4/ss4CdJrEkqTuklKeir/rC0eG+DppzysbxfTBZ2PJMA9XJMIU1IJ2I8Zpw
         dJ/A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.46 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698564315; x=1699169115;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hU+GqO/BhYe8P0n+3eRGDDUiV69Sdjp3P2jsOf8Qahw=;
        b=fEbPY9Q8pkzU+ld9/zH3FMRoIYBK+9PTPjH5gMXu1GKZwI9RYuZ1uMZ7nbgPoyc9cI
         Zwzhy/TIcO4TlQk8v8SfkVlu/vzqMfqCwQrFgX54k2VNhc+yW5tahXAjEV3pz87oPfWV
         cWTFZTSGZqDGTRtoQ1+gjPfXoI9yb8Lb54lK8QJ9MZQfnGVz7Z3JnEE6M3LzIbCjO+gI
         p8irKaWTLZo13OseQyqaBSFeZnUVx//EfVHlEPLJtUAchB6Uu77uTZj7nsmtt7xobp+M
         DJFL/LXokf4i6u9/l7VFdBYIA0DYYjmDaVUvRegkwMN7UldiYUiTuTC3Wtryjz/JrZfL
         2/Tw==
X-Gm-Message-State: AOJu0YzmxHwNI/0b/FdxFEBQKuhWoPPYLDN5mPXWPjyhMwOWRjsPKZvM
	nWe42Gq614NCt/JiCtj2YVROCA==
X-Google-Smtp-Source: AGHT+IH7pxCM39xTN/ePrtwSFxPhUwZoNtPH8g8jyjzN2h38ov6YuiGGtWA2k7qnwVBvnRZ95reF2w==
X-Received: by 2002:a05:622a:52:b0:40e:daf8:bed3 with SMTP id y18-20020a05622a005200b0040edaf8bed3mr8514594qtw.3.1698564315384;
        Sun, 29 Oct 2023 00:25:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:118c:b0:41c:bf08:ad40 with SMTP id
 m12-20020a05622a118c00b0041cbf08ad40ls2057614qtk.2.-pod-prod-02-us; Sun, 29
 Oct 2023 00:25:14 -0700 (PDT)
X-Received: by 2002:a05:622a:20f:b0:41e:2d5d:cefe with SMTP id b15-20020a05622a020f00b0041e2d5dcefemr9396986qtx.33.1698564314712;
        Sun, 29 Oct 2023 00:25:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698564314; cv=none;
        d=google.com; s=arc-20160816;
        b=vy6rQxs9WYuoLpuReEfyWxKXKBUhqVGwEiTuuzZEgoElvxYqWHERhtyKLCrpiTK/o8
         tLgc4YZlF+Tzz5ESvkutJ5bKXHQxbLlDtaaMfq8uO9ehrtNl9EOLK4yHDwKyxLu48AGK
         1hhbWXL/TIrFA4rdK5FX166sKL9HxY/Oo0AiLLn/qvQ1lfzamM3ql/9ky+oJIeiifc1O
         ae3ci64jyXWR4cc8fiNmZX2TBApRsR9gOD2/FIjwFAMJm9cVcWXApfnOWh3fUhW+r6P4
         j+y+ghrAapfILtkDzb1EtJ95ZKDqUqdPlauKLuu6m3rNBD/uv4q9bEwYLH/gEKZ7R+MS
         X06Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=nBjs/XIpNuwBCMPztZyU+WuqkV68gGi1nL6hGSkw174=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ogp1glsCl1y6y6J+RYa6Y58sSVrNDCmkDSkD8yOgSc7YhXxlcgR+Z2+2Q0SGEudbGP
         OZ4VqjtPf3ylT+YnsUjD0QFWpM5LnCE9tjXsW3Ylj4MW2W9TRx8bNTJwuAIwoYlXlPXX
         mAAAQnCnEWEvbkUQYib7uNm/LvY1694RofiYbC7kCiuDbEi09XRkJXYtUZ/eqq/CjGFs
         bN1p9VycDpnqraCm3qHjS2COMgEqCfp/5eYiX/lYF29k0B9elHLsGMlqSoKQLs9LjSdy
         54G762fPK4L9OLgs89yD9x3TYH7Dqrl5lFuFTGU0LZkH1wysROig1y3NpSiqNfkxQxqn
         5HWg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.46 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id d18-20020ac85d92000000b004195f30d7f3si3647108qtx.698.2023.10.29.00.25.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 00:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.46 as permitted sender) client-ip=209.85.218.46;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-408-LsSy_wJ3O8ic-zSDHhR90A-1; Sun, 29 Oct 2023 03:25:13 -0400
X-MC-Unique: LsSy_wJ3O8ic-zSDHhR90A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42A1A185A780
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 07:25:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3F5231121320; Sun, 29 Oct 2023 07:25:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3709C1121319
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 07:25:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1B9A101A52D
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 07:25:12 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-154-MRFeVxWRMdyLiru8Lso7uw-1; Sun, 29 Oct 2023 03:25:10 -0400
X-MC-Unique: MRFeVxWRMdyLiru8Lso7uw-1
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-9c3aec5f326so954918766b.1
        for <blinux-list@redhat.com>; Sun, 29 Oct 2023 00:25:10 -0700 (PDT)
X-Received: by 2002:a17:907:3f21:b0:9c8:5b61:7bd7 with SMTP id hq33-20020a1709073f2100b009c85b617bd7mr8555347ejc.22.1698564308019;
        Sun, 29 Oct 2023 00:25:08 -0700 (PDT)
Received: from [192.168.1.16] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id gg15-20020a170906e28f00b009b9aa8fffdasm3857289ejb.131.2023.10.29.00.25.07
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Oct 2023 00:25:07 -0700 (PDT)
Message-ID: <55be789c-4884-46be-ac7d-42ea289ca759@gmail.com>
Date: Sun, 29 Oct 2023 08:25:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: No sound after Arch iso boot
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.218.46 as permitted
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

my HP 255 G10 has Realtek sound card and when I boot to the install arch 
with speech, I get no sound, so has Arch some script, which try to 
detect all sound cards connected to the computer? I must somehow switch 
to usb connected sound card, because I am unable to use arch install 
script with braille support only.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

