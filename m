Return-Path: <blinux-list+bncBCV3N6GOXMCRBWEPZ3EQMGQEP6XEE4Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id E83EDCA9DA3
	for <lists+blinux-list@lfdr.de>; Sat, 06 Dec 2025 02:33:23 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-8b6963d163esf155133885a.3
        for <lists+blinux-list@lfdr.de>; Fri, 05 Dec 2025 17:33:23 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1764984794; cv=pass;
        d=google.com; s=arc-20240605;
        b=dahESF7lLNIBgsA+EGrA+a/9BK9ED+BteXBGDdf+lDASb0XkS5Qs7pCdKezF5w2uGM
         rGZwWHErkXndPaM83J4TVZsw+7hmCd2TKthnTvD2vCasib6c7VPc0sTZR1Mfm2rG5vfF
         z+T2yCRqIg2yf52uTht6K+e3W1hUjwo/+Uaj87jT//lEBAikTreg4leN/1OfDnz7ZHJr
         sQQnffIJ7lNUeR4zguEFS1JuCyJKMgtxXYS5+dpjf3+cgWW6Fyra5FHSsOg/ik29xbV8
         Wydkmg9JWwD1NPhYygfsO/USQgzEV5WDu0TAEFHORmuv1lkuM6m+zJvFzOXayJw6UO3J
         YM1g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:dkim-signature;
        bh=i5juLjsn51aZSnbvT4zHo46l0CnSfSOlU+ESc1U8TEU=;
        fh=7HbEdWHsGotc9Bfy8lUpwpqNyakKTMco9O/0V48HRRU=;
        b=kcEtl/rvfOyEx3o1EV0TK5VJPHHdbunNex8stf8JEKa40bqDeSMtP2UN2a2ceWiJ9n
         fTsY1q89kwHv3PRQmBOd9FhfnDOQ+TlvTqxM8z7Q9j1BOa4mdhcqhmJOONYtF0ntE9GR
         AhoKGH7M/Wp1usU45/5VHpQbGM+g6o9U67Yo5GK69C5gPp8MY4zotm3mmQg0laxKVQMg
         7ECtfTqAE9R+J9gUdLbdVZpWghd7zTDne1Z/bbnzky8BFn06yfgie+Ce+n9YqKpMR6ip
         RjLcLM4eD932SUTkRBSLYpGHD+onpMAJM5YMydX1ECaey0XF2+IwsUPxIR7PdHpGEzXC
         Loww==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=m1cyqkRd;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764984793; x=1765589593; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-language:ui-outboundreport:in-reply-to
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:from:to:cc:subject:date:message-id:reply-to;
        bh=i5juLjsn51aZSnbvT4zHo46l0CnSfSOlU+ESc1U8TEU=;
        b=kvnISm2j7L7xcvMwnG4CvR8fdZf9+BWRF2bfVKMCAPt0FGBM7c4lD1F4jIpJ2bG3AS
         XMGMRup0cu8y7olHeRdgEYS+LORL92aWQVjoQyyFpxELw3nrwiiPZly6kiFzmCByy3g0
         x3Sg39+8VqLL4gCc44ofrtrqMYSaQFcslmI8AvW+dJdX7oGv/olILg9QeUsub3WK1GVN
         dyXrODSyTJI+fESJkZ8MHBBmAiSiLcHLFNrQAaeMGHYZNMNd/2MghaybIy0D4ixcz3hy
         KOhxA6qLaTl3HgxffhAdKslBUyIsTFpd09XkTLtcOTeA/EgK5Cd5Pe0yk74MJMFF9cat
         nQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764984793; x=1765589593;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i5juLjsn51aZSnbvT4zHo46l0CnSfSOlU+ESc1U8TEU=;
        b=bUwmFcY+DZzvlBERkcprUSylsKB55cD4bQTH2sWX2PM0n1rLxM/WzkU0gVZriG5o/A
         2kBmnQ/60nIM5fcJ6VFRn25mZn6ciYMZmsdCLpHGEr2hSF0hAU7uYz62p5X0G85eYPv1
         6vWAfT8HT7/tD9IM2QiMbe41l42/zNemeiL7WtXgsGdVQoBRJO+Mf7kYZnexbiBYD8/A
         yrcJC1cTsD5qHa9XPtpmTybWoXRLjxH5gHGuTwqfyF3CL6IHshZFFj66d7j6ueEuEM4L
         Yg+t4IzsYHZpjiSRTxbHBNeUW6/L6ugVk3oKhAsMFnhYZE7hSqeY3TU0A+w7XxzGTfV2
         JNFA==
X-Forwarded-Encrypted: i=3; AJvYcCW2Ili5VWtrEv1c9UvBqRtyAciBCAjchE+bXDffTeTAJwMcbB5aF8YbCGPT6i75v8qZshC/ww==@lfdr.de
X-Gm-Message-State: AOJu0Yx4eZITFR1Cq3nEvyCtMJ6pgFUT8JYtFqKPKM2jt8cxXUuWrBjT
	3gjZCsOYtJw9Y3K/QPQS1U6B8y4M/JfNZLgH8uxYUOh744guOHA+AgoYDcMNgLBlccg=
X-Google-Smtp-Source: AGHT+IEZcWKOfBc/hPkUXCrZu7ccZukT+uGzjlDWGaz0eZoRFcxqM68rAQZ3uPuTehRJf4VuH9bO2g==
X-Received: by 2002:a05:620a:1709:b0:8b3:e4c:1bdc with SMTP id af79cd13be357-8b6a2589abbmr147845985a.65.1764984793346;
        Fri, 05 Dec 2025 17:33:13 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWYO5r7CgO9lwitMbXSI90GrAMBCWxDUyxMFIadScXawpA=="
Received: by 2002:a05:6214:1c4c:b0:78c:3f6:27af with SMTP id
 6a1803df08f44-88825c8469dls52011906d6.0.-pod-prod-05-us; Fri, 05 Dec 2025
 17:33:12 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCVD+335TTClWENvOqUgod1Hx5JNEp38d3/zoCMb258Dcn30AvOhfnOBmUAFlQY7r78HZ64zGQjUWaA5Sg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1a95:b0:4ee:1ff0:3799 with SMTP id d75a77b69052e-4f03fee8e32mr15851421cf.44.1764984792129;
        Fri, 05 Dec 2025 17:33:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764984792; cv=pass;
        d=google.com; s=arc-20240605;
        b=Y8BMyEWIsrKrPHdsBGyNjdxfisr4Sj4p+2m5u9L30Y9we/nCbov/rPXMS5GEOySUbT
         nkga/9xMOU0BylwyDFF4mbKbEaJAY+Xel9UZh79AAgSlH9qrE8oMeAmtZS1zlno1z4/W
         pXPQXpDHTO4rws3cSwby0NaH7142Hby4cZR/VLZHgR5SMIKHr9xop3AYUZ4X3yyMDa/E
         p1acVPjZnQSUx4cWywgGbILNdF7AdRv/lpjYWpm55UobFzP8C99nM1Z3/BsRvE2Lx1Xr
         cU9pZQJunjSdesNB4i84y54XiTmRR/FwzqvZUZwdyvn+N6NljY1hUF8FSd7cvrakxwFQ
         +8ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=zESvN7BKAXuS6dsfVAHVbjaTGZTYNKLZo0N4e2k4F9E=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=I3TsirbnLGw4+EvxCkzotZtwFO77CLkg50JxhVQmRqHzebwlcxDwPe5lBWJ9J1HMsq
         zJyJmfEEiDEcn5y97aVA995Ur+GuYaRFlirAn0yTiTAE5jSU//R9dFMKKwQ0tcChB3Mi
         NNTgomfxqcg7XnuX65wX76iBj+4LkFcwRN4zUUHJPDxaZtYlV4N2WfIdUoUPXPrnaLKc
         HtrBhwMZZznK4UjSjSxNU1zZA62n2nYyd7qCktVM/HdiR1tXV17tixtrjkl/rt2xjWPv
         twLiOFnocMgUHSD6C0QPTBGJy1H/5Spj71o1QkMo4HBeFvXYCyfmi1wKToisKq+ez+NG
         fWQQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=m1cyqkRd;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4f027d2417bsi76143871cf.219.2025.12.05.17.33.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 17:33:11 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-591-3Tzoz6hCPbWMECqB2wZCmg-1; Fri,
 05 Dec 2025 20:33:10 -0500
X-MC-Unique: 3Tzoz6hCPbWMECqB2wZCmg-1
X-Mimecast-MFC-AGG-ID: 3Tzoz6hCPbWMECqB2wZCmg_1764984789
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8DC0D180034C
	for <blinux-list@gapps.redhat.com>; Sat,  6 Dec 2025 01:33:09 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7A9453011A87; Sat,  6 Dec 2025 01:33:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7790F3011A86
	for <blinux-list@redhat.com>; Sat,  6 Dec 2025 01:33:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 089391800365
	for <blinux-list@redhat.com>; Sat,  6 Dec 2025 01:33:09 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1764984788;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zESvN7BKAXuS6dsfVAHVbjaTGZTYNKLZo0N4e2k4F9E=;
	b=grLqty68IKI3DnGgZy9o7A6NQL4WJ2APxZHY73KigsL7dUzUEBzVaelxqGpMRQENLgwhCO
	Ur1SSmQC1YK5FNQGCRvtHx3LksUCSQtQnG9yatiqtH/aZ4ymWceMShi/DDPyuu4J1GJ3lN
	+kPZv1tc7rOPOnKF1n9Na/eJDERtqcAHLF+AZEUJLfsZVFhT2X4249fE61LQ7ECqaYVWys
	hIXt3htvfX48M4NVUf6Ya0zDHMl0Bn/jRNCczt2XbGqFba00F83C6+Rz2iXlBEeZSEo6yw
	jI8g4YHGf6bfnrjX2HkUYXNaC6PHJxnpNoq5m0v8fk4TOMn3zmLD4F85LSDadg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1764984788; a=rsa-sha256;
	cv=none;
	b=EdzBtmh1OPdYUAxIrXz/NAVWEmq5eF3HYGgaL9NrakdwbpwGPUAIvRD/06pH0ImW46FoII
	Ds0oku7svTkrc9MqTt6tlzUhF6K/tSaxfxTqDyW1wrNUpEAgrPWa0/wNO3s0x0K/BrYttU
	7MA4bMR3eRc0bML72GPFlw2r9sCNBCnNFY9PBg6y8iiAs6vnYYLVLkUESsU2jOHEHaBoDw
	hfKCtIdmxzljmD/1JaQcotGxI2wyt5VddrV0zQBE+XGsWGJVe6YNs39Jm2GSw8mIStEeNK
	+HIWufyVhG2N4LFhkXAt2dgW778M/o5ta1q1x8BAiRTEqyKiGrsZ/QkP6s0qRg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.it header.s=s31663417 header.b=m1cyqkRd;
	dmarc=pass (policy=quarantine) header.from=gmx.it;
	spf=pass (relay.mimecast.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-618-aSs20SdQOyKXAM_eWDc2Bw-1; Fri,
 05 Dec 2025 20:33:05 -0500
X-MC-Unique: aSs20SdQOyKXAM_eWDc2Bw-1
X-Mimecast-MFC-AGG-ID: aSs20SdQOyKXAM_eWDc2Bw_1764984784
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.40] ([136.47.142.229]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mel3t-1w1Zjw1pBN-00iiVy for
 <blinux-list@redhat.com>; Sat, 06 Dec 2025 02:28:01 +0100
Message-ID: <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
Date: Fri, 5 Dec 2025 20:28:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: info on zorin
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
X-Provags-ID: V03:K1:e+zzuW54AgAlE/ZKS2KKitug33Kr0AHTu0XHko2boC0pwgfu2Mm
 ejKxapScoRRnrTte2Q1c+SnRNyfiyRbPhZFlEY/ihhKG9NS9m4KVdn+Ikx80KaCPuHnUzdL
 2kk9NKa3G1iQ+sNKhu9mq5n8xoHWeAkDWiqkADDKfOoazt04PK40rEyavYIEU6tyk/5F9uJ
 EEEGaQmK83qKt7ZDVdCnQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:PuS9LKZ0eS4=;R/36KUiN7txIGo53KISiY0FIxdc
 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
 d4F+CWpiub9UchZzI2s2XyaQ/l6pzARtGR8=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9AHtBQ3ltf2T_kHH0Vd9Ik_hP3C1EqB0J6IbRAbGr7I_1764984784
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=m1cyqkRd;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it
 dmarc=pass fromdomain=gmx.it);       spf=pass (google.com: domain of
 kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

I just stuck it into a GNOME box and ran it there. Overall, it seems to 
be a tweaked Ubuntu; I didn't notice much of a difference other than the 
changes that were made to the desktop layout. That said though, the live 
iso does play a sound when it starts, and alt+super+s does start Orca at 
the install/try screen, and if Orca is started there, it will start 
again once the OS starts in "try" mode. Generally when something says 
it's based on Ubuntu, I tend to recommend staying with the upstream 
Ubuntu. But I didn't really play enough with Zorin just yet to know how 
it's different, although I did read that it uses some of its own 
software repositories in addition to those in Ubuntu. In this case, I'd 
say that Zorin is worth a shot. Like that new dish you've never had, 
anything's worth trying once.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

