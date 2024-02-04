Return-Path: <blinux-list+bncBD6J3OOK2IIBB3F77SWQMGQE3F6QA7Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CA9848B33
	for <lists+blinux-list@lfdr.de>; Sun,  4 Feb 2024 06:26:06 +0100 (CET)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-78408c4e2c2sf485703585a.0
        for <lists+blinux-list@lfdr.de>; Sat, 03 Feb 2024 21:26:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707024365; cv=pass;
        d=google.com; s=arc-20160816;
        b=kY04TF3u7fofWnjXaKPqTGvJn20LYan9y/K48VW2rZHT1K6JHZCzfbHEyZq0qa58sU
         etIhSwcFAwcFtFLbkOme7nVvFsvTn5XuPKZTnNijC7oj0A4iSwPkrbmRFsGdHRdiU6Qt
         M4q/pZhodPYCcoo0MlQ9zmNMPbbDcN1n+MMAYwDH8pWFRkdsjxe3uM7QKPGL7rFV7CY2
         fV2PDR3N+8BBGV/dsjJ3MO3kR7kM5dCusN959KJZfsvUeNi+G70SQfOPJNMtbM4WtzGm
         2bQPnXOUwDpmi419fKS1Xfh7c/eEHemXBW3rqDkj2UahtNowAbC+BZhs2kzVscVGijVa
         qp5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :mime-version:date:subject:to:from:message-id:delivered-to;
        bh=YADpV2mULkLftAWvOya2CCiZq8eK5z4jYCMGeHQCQrg=;
        fh=ftio3dMi6jWHi1EkUoFxkBH17VC4yHtByRh/y6g0vN4=;
        b=F3tsfDKO7pjsaJmEGH/5pCVjS599zipCofEGYc4TYy33MUM69h0dV7/Gufiwd4AQak
         EkH9LoXOv6p15CcZel6l0D4PEKwWIz97ZphL9pWa+B8G3Uxn6wapdm1y0PL92gdb2XDD
         OKLJPY0tkMdPjye9lKsTrLd8yMV1qsvw4jr3rUMTHZhRDWvq7G3/v/x6chSRLue+veZq
         3CKUcaomDGcnjmJbWOR2ZF3jRdHOFQ9MG+s087cIZtEfXbu1mbLI8azh5nX74etUf9WC
         Eck7JSHov8OtUhSNQ5DZJcThvnBjoDavsvzDt3Hez2hES8WuIZn1FL0Z3t3zvICDpSL0
         Nrhg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707024365; x=1707629165;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:mime-version:date:subject:to:from
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YADpV2mULkLftAWvOya2CCiZq8eK5z4jYCMGeHQCQrg=;
        b=IOjRFjFM6YDcByZ5KBInVfz1oxx9PnPmbQymwoHcEtKtVUbMEe4lNjwwPIfZOL3Tgc
         00Tg+W6IFLcPsWcspLTUNz/O9nTo8Q8OXVIU/rMUr5tr/XNm+roayMbrWN3Sxhh4Mfk+
         38gBS547UTyIR1hcqAMmZsBwBkMkwHq0HKBJfcCo1CjfitYsyw0PjxB8DvoEakg/SWAZ
         CHioDjHWE95rfoPIMdFlineOiP7ZqLzzYblQtQTaSLmM+NVf2Rxebw+iv9F8PKzlcVFf
         u5hrLgX0AZvwYvSt000F5Mxb04n0Z/e/SA1vdOejfm4YUoR2/5sbswF44H0COGyzCJA3
         yzRQ==
X-Gm-Message-State: AOJu0Yxezck2R+MCiKWi4Fd0yJDgRTaeAD7qKquKaP1z6+Jx+TEiam0i
	rCKqMHS7sOmEd8UGWKmLVliwOuiJIU9LNRUHmW5QbqV90eO0zyuebEpIzHm8SfU=
X-Google-Smtp-Source: AGHT+IFTgxbf+uH1Sk/DIr6Jt4+ffTa+Xgc6DcRtMcHGSfOWr9/PToIG0ZYbKf8oK6VLsGHvkxEv3Q==
X-Received: by 2002:a05:620a:a1b:b0:785:3882:519f with SMTP id i27-20020a05620a0a1b00b007853882519fmr9760461qka.7.1707024365305;
        Sat, 03 Feb 2024 21:26:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5742:0:b0:42a:a348:7ca3 with SMTP id 2-20020ac85742000000b0042aa3487ca3ls4787840qtx.0.-pod-prod-07-us;
 Sat, 03 Feb 2024 21:26:04 -0800 (PST)
X-Received: by 2002:a05:620a:145a:b0:783:daad:3fea with SMTP id i26-20020a05620a145a00b00783daad3feamr10730166qkl.9.1707024364483;
        Sat, 03 Feb 2024 21:26:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707024364; cv=none;
        d=google.com; s=arc-20160816;
        b=pesbrzToWmWsbjEtg9d032PnG11wsJI8E4RcR8Lp7KvxtjywcB+AHXN2J+aAbXbGFU
         PiTih2jdjV4OuxjqFMykoGDAK7C14Ump3ColsfZP2tcXaPjip4wnP89QGAAHYnu1Yjiy
         K8pIfhD4UKo3TuESoanku3VAvNiwSkViIwFjrZpM43DQoV49QHEvJfE3gbylnNfCU7pX
         CWdMI4WlOv39/87WuSWvwsVHe4EtP23kdOYvDB7GamnzuyFi+1o0uDAurgHSKSyKjKgL
         bPI/oVzJ7CHRoz8uavlUOeE7i9LskSaNeEG4yCKZ+Iq5ZrndpdFU+x8joqjHDsD8Ig05
         Uzgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=Jlf/CZ02cvaQuD/Qi4Prfm6uq6VapI/A9sScD4B6mvo=;
        fh=ftio3dMi6jWHi1EkUoFxkBH17VC4yHtByRh/y6g0vN4=;
        b=xdRSfw2ySJMJBilpl+k9cAw1Pvfm8R693y6+Zq2ppYgGPJ6ZhHgDq23TEjW56YtEN3
         bUOMiPHpb9Syd/er6WXRL8CvyGp0TuvKbyT0kYb8l0abnLa5nTSgKXb8Dr2Xi8lCiZdQ
         IqOlRNGpahEPUjyPify6J2oc61OGn7XiNmFfgZ8d7IQI4T8qso5LMFsUjX07a+/Mw/Gw
         dGhaHu9+Hfa3iDdmsDaOKyxMi/VhJhzhxaiiCCdeBEL449lIglvcDtrrDU6kI/5ySvI/
         cObnMqKEuPuUUDPT5BYlZcVyjktf1j/w05rb6CNJRCVPJePRnAe6kc0VgCTO3V2PEJT0
         hQDw==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Forwarded-Encrypted: i=0; AJvYcCV1x3sswYzTy6MKi+wuO/POcWfGZe4C1lHcUG82INU0FoA1QnDAs5ROCnrtjvpa8UwcvMog97HmO57zwV0HxWc/l12M4g9mMWT7Gpvt
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id bq43-20020a05620a46ab00b0078562c80d8asi2896268qkb.20.2024.02.03.21.26.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 21:26:04 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-520-chd0BloZOoCQnazWSKNtGQ-1; Sun,
 04 Feb 2024 00:26:03 -0500
X-MC-Unique: chd0BloZOoCQnazWSKNtGQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D77651C05135
	for <blinux-list@gapps.redhat.com>; Sun,  4 Feb 2024 05:26:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D416E2BA; Sun,  4 Feb 2024 05:26:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCD8C3C2E
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 05:26:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC86F800074
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 05:26:02 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-679-HCMLnBAFPPqfMFe1AA36aQ-1; Sun,
 04 Feb 2024 00:26:00 -0500
X-MC-Unique: HCMLnBAFPPqfMFe1AA36aQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MOiDX-1rfbtO0e35-00QFN2 for
 <blinux-list@redhat.com>; Sun, 04 Feb 2024 06:20:57 +0100
Message-ID: <20240204.052200.093.3@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Programming lists
Date: Sat, 03 Feb 2024 23:22:00 -0600
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:ljGoI7fE0BuwHeToqrljDrEJBdNH0e00TiptnowFScK/gN4z+pa
 mjv7p/Zwp5YTn1u1er9yppHO0VRLO14+II/xv4o+aULtZUWaYaZMbRuH/sJ7z0iHeuQi5Lw
 mhvmHY5dbiVIuu4F54+rcyK9sycc5Ro7Uf/duaAFT71cHl3LaM/0+3P5LfH/S39aHnKCMRC
 zErG1yX1UPVjZDb3wfpcQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:MKt8k+/ENcE=;N7La4fxRnFKpDJXyV8nnCXKm+iI
 0zJaFVc2lKyB07uqKfEY9eOiOhxBwO+WsBBWxmy4a/7039uW3K+p2DcyMZwv1QLAqF7EX8WpT
 C5mbhvFs6BcmPKYJzYtKHZ58t+9gxCDDsGJPbXz7LTvN0t27ndt1PnJKgSOqIsdilhCDqJM9z
 KAz/jK19w0Qaalx2NhRQQHQN4AYI91i2yn6eZsecRlDejvNOxciutZHGkPD05Q6hbvdUzxmI9
 crN0C9sHJaM4xh1GJh85jycnRmiYEkFHirsd5wRnAk8IjTcmR3QAiJAA8KnwIsY4up081dz9c
 WePHPrDEUng2vooH0YtpjkmI122zT65DBUKkte20IYEaLgAcXCHt1dcz/0YSAv86rv/TtzK8K
 sjOoFVJSNrJrbWO9LU8L40EOoGWRUMu3SexcsW3EuuRu+yWSEsAM2pF5lMVa7S4gFquc+63BD
 CxxPBaVtJQ+a5fwRSge814i+wOliJC5Bjv8vO+6LJJd00o4vCG4ahLjh7BkNBq0ZWXLe/TyMO
 zS/DfPVy1VEoyGvaKa7XEKpxpJjwVQBR7NM27mk98Ep2WUEr7/gtPvaZhQXoAirHeekJSynEV
 BqtHebycHbvSrCr6IOetPrAi/jpAqXybMrE8DenyDebW/zoJ09jql2SlAjSaeXz12wVJ8+mEm
 pPorXddOWTAv2ZMail8m0S2VxzvpWNa3AgezyUlo1y+sqR3xUrD9Ye/BfOhuHe1Fa6NA6xdb3
 5EHYy7VQoEw2XYXVUw5Ua3Jf3sBmloVW+zMVANK2R9M3BU+8p0KdNLorKxmgmJY/Xx7FJPO69
 +lKSet0+JC3I4vUC407FVB1cunwj2mrrVXVgO/jjIlmzo=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

There used to be a website called blind programming, and they also used to have a mailing list. It's been long gone now, but is there any other group that takes its place? Thanks.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

