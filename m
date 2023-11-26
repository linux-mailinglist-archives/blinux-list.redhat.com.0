Return-Path: <blinux-list+bncBDEPFPWCWMDRBOHXR2VQMGQEJXVX6YQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A607F9590
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 22:42:17 +0100 (CET)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-4ac366001afsf1191865e0c.2
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 13:42:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701034936; cv=pass;
        d=google.com; s=arc-20160816;
        b=WWykLAz59zxyVm/EvshMHt0hCnhJfKasArVBmEUUZjGoxj6GYqrLzYlv8YRhKkjhtt
         fMJ/EC8BHF2w2NTqcAAvbF/aUD7qqzzY+paGxkIiRoQTJgwKSzBdFYkaqOkJ21NyYy6x
         6O4m9B6LvXWbJcB5d0D53dY+5ZCF4oLbtAQ89IGh7SRz/vPdWoNVoIJ46W9Ux+N2nefr
         OWdgL6EVnrhJWx6bvStRZo/eebHqqCaRrjTALScj2iA0rSNpWqQtDgyftaB1jzSX7bw+
         F7IRHwWPD2U8f9yHajl0a4slj9o9CP0pw8cBZ0c4XAL3TqhhQZIzGxH98AAj7WfbvKYI
         XHcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=dHDpWChuNnk463k3F0+CdACsYhbCSNLJJfCTEt3ytus=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=xL/P/4u8XisNy+DJqVEmCMjf98NWL/JiGZt3ZW5eYl23XySw5Hz8yc/e8rzq6O6P0F
         BRkr93iiHKTb66OefsBbXW5DPt+sPRbsCFIFxRWAFzSen7hBnF1RWJh5RsxNxakPTT4u
         2ebQz7tQGH1yli1PIUqjx3n3G4/x3WNQMXAOh1Ar8Tg08Ukfzxp5YaMkKCa8xsfqm1tt
         UiMKp2AlTwAXV4m67/yj/WHdFLlQ7hDSeCTZ9W+2z/kZRz3s1T1J5wx8edx874YoZ/hl
         4jw9nWUK2Lof2EYDbhn9KJTFqHO3HCo90pdlbwCMsrctBoh8XW6issZqTAW/mt8jsui+
         KjWA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701034936; x=1701639736;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHDpWChuNnk463k3F0+CdACsYhbCSNLJJfCTEt3ytus=;
        b=UTQsu+mFVg67l8q5mHjpVp2OkJ+mr/+TsW0z+iX7V+76/nO65LEm2KAAFh1VAjM7eh
         NTlbI2qp+A6KfEBoLWX3l78OwrhNGtEfDRuhQ1fqhjOBKrpcHG2o/xdldixcv4B3YVal
         40bk8r74lApWz3mbGE5T2wkqgDIMQ18V8g0dtJcR1VxzlKC10/5ubpzWmn6YyBHNpNCq
         5yMu7+bBPJHmzjqAZpl5q5/0NJltH6jkTK4sFn84eP02Ikz67qzWpTvh0Srgxa+99Xtj
         qt3fOzrLcLHr3eFF2W3xBGK9JBCzJm4MF53MtaLcz1AEmg9pqUPtz8fHVryl1ZbxT0II
         kwXg==
X-Gm-Message-State: AOJu0Yzp/2GATzmUsIJrpD1qZ85I+E2xxRdYJdoik6iYqL5SA8zEvfhW
	pJDpsOTqaPWSKQlrICg3RVPgcg==
X-Google-Smtp-Source: AGHT+IFDL8K4LrE7CrF73qCcW5TIpoGDXENA/ywjKHGMEaDSHGSuJGGyGuAaDeeSBQlkbgWsjx123A==
X-Received: by 2002:a67:f958:0:b0:462:f318:f483 with SMTP id u24-20020a67f958000000b00462f318f483mr2297628vsq.16.1701034936362;
        Sun, 26 Nov 2023 13:42:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fe0a:0:b0:67a:2bef:ecd6 with SMTP id x10-20020a0cfe0a000000b0067a2befecd6ls1226039qvr.0.-pod-prod-04-us;
 Sun, 26 Nov 2023 13:42:15 -0800 (PST)
X-Received: by 2002:a05:620a:8bcc:b0:778:b068:9c89 with SMTP id qy12-20020a05620a8bcc00b00778b0689c89mr9338321qkn.51.1701034935539;
        Sun, 26 Nov 2023 13:42:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701034935; cv=none;
        d=google.com; s=arc-20160816;
        b=xSDlXp2egxFqn47xOqdV5XzSO0lN0ywk3ol0N0He0h+1cum8ZNPnDed28MKnzWWOfh
         FV104hvHz2drqAE+a3Hl8MWxEPl0/Uv0rOx0V+pADs3PtKqnfz2MPTW/UqBwnvwCzc/D
         USBy6INrXcLFtkJDV3oL2szGgA57FaBIJFLGD7QabVrqgM+OMg8n7zibP47Blor5PZQn
         j5R+wIkbqGnigVPrkkjBKJemFWX5cEQqpVTmi0uzkQsmCwIk/leaWiSfvZtQ9yFxLTnB
         Nj75EFdBdrj+AAP6zdAbrBXNYmgL//Df1/Cl7R0aVJXk9pSkIfc2l99tW/Td/DWp+o81
         mIQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=RQr6xZ6WyrcSHAWX/NcMlDYIbdqp/2a7ULNQa0zgVi4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kVsF+VU71pFPu5A+7zt/SYnZifdfcwmlMDSFxcmlB/uu+I8QTJZs/+fyhqkznGj9TM
         31tRPWCIbUG0YHNOXr8bk33hflG4y20qre2AcYZWXnKiS7nZqZfs+J69ZRVFNbMG84Ot
         xQjFv18Nbzfk8uAv3CMfusZw7MdqPAXzZgilC2PtEsQ3hak8ZZKE8B8oCft2L6FRglRc
         UehQySMwsrcwhwTfi4pKqAUO3oBOE9UVhXcm79ijGXoVeeJf82mgeFMYKYjT6GtoxAoo
         HEsaPnmV9u9W99Y1GBTX7/H6nbNMsKcMpcx36fz3tPQVyfgZRmK0w5YjnvbDe+XNMPe6
         egag==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id p1-20020ae9f301000000b0077594d37ca1si7380570qkg.562.2023.11.26.13.42.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 13:42:15 -0800 (PST)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-303-BxOVZzPAMp-gmslVDUpj_Q-1; Sun, 26 Nov 2023 16:42:14 -0500
X-MC-Unique: BxOVZzPAMp-gmslVDUpj_Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCEA585A58C
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 21:42:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CA40D503A; Sun, 26 Nov 2023 21:42:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C316A5038
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 21:42:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A13F22806664
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 21:42:13 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-133-xIWpHN7fNDCwd7wC6HpiAQ-1; Sun, 26 Nov 2023 16:42:11 -0500
X-MC-Unique: xIWpHN7fNDCwd7wC6HpiAQ-1
Received: from email.seznam.cz
	by smtpc-mxd-54c84db65d-jhrqv
	(smtpc-mxd-54c84db65d-jhrqv [2a02:598:64:8a00::1000:4f5])
	id 7cbeda32692689687d542b2e;
	Sun, 26 Nov 2023 22:42:09 +0100 (CET)
Received: from [192.168.1.173]
	(host-213-235-142-85.ip.topnet.cz [213.235.142.85])
	by smtpd-relay-5668cfd46c-2ts87 (smtpd/2.0.17) with ESMTPA
	id 30b0e563-335c-4fad-a331-6e5e589f3cb1;
	Sun, 26 Nov 2023 22:42:08 +0100
Message-ID: <13e26f5f-cbe7-41fc-a694-c0cae24e6ba4@seznam.cz>
Date: Sun, 26 Nov 2023 22:42:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
Subject: Text to mp3 by RHVoice
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

Hello,

in the past, I've used this command:

espeak-ng -v cs+max -f file.txt --stdout | lame -q 9 - file.mp3

how can I use this command to use with Czech RHVoice?

Thanks a lot.

Best regards

Vojta.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

