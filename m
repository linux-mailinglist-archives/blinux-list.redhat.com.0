Return-Path: <blinux-list+bncBCHY5TMQ6YERBPEG5GYQMGQEERQ2P3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D578BE6E5
	for <lists+blinux-list@lfdr.de>; Tue,  7 May 2024 17:05:34 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5aa2b311cecsf5460227eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 07 May 2024 08:05:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715094333; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Pmko+QVl9QugAtuysTv2WVxy4L+FtqeVOUUrPwdlDtHvuuWmDQkeyEqPEPo01aLFG
         Aqs4xDoylUi55krZ96ktJbSDSF5yBpEypKvI0iI2VBeRBCFO2DHC66Ujy38CIJYEHkEp
         cTnKSdkUf/FJuniiwJV68DWn0QC6sLwKlmpNsWSDVp61nx3wNTXXnqkN8X2p7VahO3AJ
         aCrxO34m6Sb9Mo9Z7+QKZNSfWLMAXDS6VBrHTGuta1oJd9/lqU2dFhG5f50y8KhzIt1M
         WGDbMDhJgITaKk6q0YlAWlmb56bbfReLJGM/QbzpIywz8Gz/vC80fy6u/hXIiEO0EijH
         WnVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6XpmTCZS59zb2WZBYci1shllYkC+zYjwveho6HbI21g=;
        fh=tc2AFfAYkDLsglt1PDmNHE0D2fIVpn+B7tZkrfXF3GA=;
        b=Zr8VCT+DRKdUko4PMs9AICmSnyX+FNPAVzaqzUmV6UXLXpXxUfDh3FwJr+M3q0I4+6
         IE/3k4z/ZZhnBmz4tAh7o6nV9S50/Ld8myYE1tT+C1w88DBUOtm8puYpxvQJG/4At1au
         gmrwkcxduEn8YfauTvRozZMzIRr4qlDOanSfmEY/yLvuF4tajyTMZ50fZ4vkkhtQeqCc
         mSX0nXJz4Xl3GfE5+4WkdpD0Jxj0xT36dVTzxDi0ppU4r5GuSfykVBoFGWOCusWh3tuH
         Nzr6GJ5Xduk967Xt8HW8T8OfVgqQ0QDXIQs/bUFosrNRAR/L4yoV0xBIZpQyvjtri18c
         acMw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715094333; x=1715699133;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6XpmTCZS59zb2WZBYci1shllYkC+zYjwveho6HbI21g=;
        b=UJK0mJ/TQ1tGk9HhkKCGNnWPigT4mubVpOqWUN1NZIAycpJ5JiQqJ0XO6mt8I7gVpf
         R+3WUF+gk2vKoqjkCKDJzD9M0ZclQCIQ+paZ9KWYp/ZxmtU94igJilRNe4UQ82bc/Duv
         lOYROV0dqti664f/xzL4vbxfhM+X43iaQtpjL1Uzu90pq5707wx7H8yk0hLUcYvHRGiJ
         yg4joawPz8znNRjqe8swJFbjDfD+CwbRf26oEc+zNWYd4gr1pMCNRpSNKB54ypytZvp/
         4tyqjsweVP2w7DorlYZlgaOZYmfWc2ewFRkBZy8nNtd4X/FVJHA8KvEcMuNCVFI2+sKB
         tWEw==
X-Forwarded-Encrypted: i=2; AJvYcCXjk48GM7JC7WUpDYTIvMn+7FAZACVoWmDJjMbsqiVFitr4H5aRaHZfi19uigfGWnKx9yPpOAS4WYaldGqTBV1LgqNea99oDX6e
X-Gm-Message-State: AOJu0YyWMB9QLSK3R5uMhJAsq6qNZ8kVmG6Y3Ji43IVkK7jnx3K+gXuU
	7eqcJZ8RhRNfP+ys3P/PuMsVm1wkp65C6WlniJYiLKTXqP1CN+RqmLMOdjtF2Wc=
X-Google-Smtp-Source: AGHT+IHPaSMrnylZl/jhtVhjuv5dvU/PkaYCfFqqXa05eD0bvF5USm6fcL63w7MMTuno0faOMDCYLw==
X-Received: by 2002:a4a:6244:0:b0:5b2:201c:ee8e with SMTP id y4-20020a4a6244000000b005b2201cee8emr4955069oog.3.1715094332897;
        Tue, 07 May 2024 08:05:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:8c49:0:b0:5b1:a8bf:ea63 with SMTP id 006d021491bc7-5b1babdad5dls5598689eaf.0.-pod-prod-05-us;
 Tue, 07 May 2024 08:05:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXwcrAVTLgyLmq4lof7f1/7VcGS4AgcvUPUEwTbVCVk7PiG792wrgaPna5t6A2p1sohNBxcUh7yrJXkGAR3uT49s9vP/DRJTF/PpMdr
X-Received: by 2002:a54:4e94:0:b0:3c9:7f1e:76dc with SMTP id c20-20020a544e94000000b003c97f1e76dcmr1131254oiy.59.1715094331294;
        Tue, 07 May 2024 08:05:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715094331; cv=none;
        d=google.com; s=arc-20160816;
        b=ncK1KLldcxnYDguMKzha96j+ePAdgGCytvYCfcNFc3VoeNvOer8PDlUkTv75Z4Saxd
         IcUxYb6qNAYPefm2c/Jc/7+KZe26OY0agkCw7xa0qV6Tc/jkKe2Abi8JSJW59dx4kkqS
         eOpOaMLiOIFLE3xYk8QqKntNA7zWU2IAen0MNzMmZbrPIazibS71WEJCrpCeTy3xXXad
         OjlUa/z1WhbbqHVwKO3QUXPwIrrTgVzXVB4IwdVAP3RZUdq+inNm4coxhqLApnB0omtF
         uLlOZA+W8ZBLElwb/0lhmY0DvzyH2cMcpaMM10fjbISY5b91U23nSC5YBsUYQCMDk48C
         eFoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=/Qxim1meHNRU62R7054ruUOshJ9lmif7LrEZVnBWaKU=;
        fh=NbaJD2uAKV4/FIqTd0wat3NgsLwCgLHQrdb54Oo5y/Q=;
        b=V+OERK6qqxJjEcYkqdiIm8SLMtm6Sj3fPYl22I/E/eD0EV9GwoNbDbYYWULgPgx8p2
         hMwH49SxMFZtOxZy90kXN06nW3BUHncEzEg4I9j68Gvf+uYnZubbZCDVtgemQody4LYX
         3KGK8bQhMgkzC5ttxw6zyC3Eoh4eAQ1GCdokM1JidF3dP5BVzbPKILLdlxn52YN4NoHI
         L0uPv8IIlCbCrI12XFD2ExPjelt/20qZRgdGvflOdGflaETSyy8j3qj8KJ8cgXCDjLHI
         hS2HXjIRMiGuAWKin41KK5Ctj9dxljuas7LAX+6sOHwI7Z3Ztnm2SN1KoMTaAQeeQGsw
         sttA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id ip23-20020a056130621700b007f057903369si2137001uab.171.2024.05.07.08.05.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 08:05:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-BNhDYnwOMGKWrqcS-OOW1w-1; Tue,
 07 May 2024 11:05:28 -0400
X-MC-Unique: BNhDYnwOMGKWrqcS-OOW1w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FC8B29ABA0B
	for <blinux-list@gapps.redhat.com>; Tue,  7 May 2024 15:05:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0C5DB200AFEA; Tue,  7 May 2024 15:05:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C81C1200AD74
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:05:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7700D857A83
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:05:27 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-677-Dq-4it6MOoma3S5lj1vIEw-1; Tue, 07 May 2024 11:05:24 -0400
X-MC-Unique: Dq-4it6MOoma3S5lj1vIEw-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 7E18E4111B;
	Tue,  7 May 2024 18:05:18 +0300 (EEST)
Message-ID: <f2d2325e-636a-437d-a489-b2a2fe6fec7a@harrastenurkka.fi>
Date: Tue, 7 May 2024 18:04:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com, orca@freelists.org
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Subject: lost website linux accessibility
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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

hi

Does anyone remember a website where you could download a kind of=20
realtime ocr script, it used your computer's webcam and this person
 =C2=A0 had been able to install e.g. proxmox independently with it. There=
=20
was other Linux stuff on the site, among other things, instructions for=20
installing waydroid and android with talkback support

Elias

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

