Return-Path: <blinux-list+bncBDT257MIWYORBOVSWK5QMGQE24JC2QA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A2C9FC6E7
	for <lists+blinux-list@lfdr.de>; Thu, 26 Dec 2024 00:46:05 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8860ab00dsf103245016d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 25 Dec 2024 15:46:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735170364; cv=pass;
        d=google.com; s=arc-20240605;
        b=RDTwqoPawB6dg7gxJx5jZnfwTXyo2PYMYTBiWy/tGp9tVPg5bpOMBontzqoprU88eJ
         pBO3243LWx/7GwSu1JDPUDxAGDIsRtiAZ0wLN2FFTqtj0GpRTQ6qKMBMcwYqYhmTEXFR
         IlTkdlJ6u06Vg38ZIMk/qslgcDG2A0a4ctKsI8IZZSm18FjpsxI7nugvmdMcHcPd9kCF
         vS+tGrbjj7d/PrnYLSC9+X6/WdtYzF8++KwvxFObd5UF0/A1RfBDaMAK4TLS34YHKsWo
         cUnqxjM6C2JWPGqQmephmriCUcgir8GUcc6BEbsrFdUDLYyhLLtQGbofzSPoxpbHG4dz
         7/Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:to:date:message-id:subject
         :mime-version:from:delivered-to;
        bh=q6jqAXS8l7w5FKKttBRSh6zHPjjgaZZZzwVoq7fjPGg=;
        fh=hxXvn/ucE/7Mrv6FKYjvaeOt/aEIkMILLuMJVuGP0S4=;
        b=cmnJzF9LtV7N+BOD+HnB214kAnN//LBIh/MMehBS64AB1ijMJcrqoWzDtONJ69eypX
         /AEzKAhUB4U/dNGKmU3J1ZwMNwi/UoC8pBVYEHv5QgHwhKNm1fp9E6riy+wKYAGf6plv
         t6TnQ9WtiXmZ5tfimxYmw3Z3Kp7IZkdYsjECkXxSKiVRVtkKcSjeYxtpYnV1nPN2l55P
         REEvb8ebCwCbv5pRXak1wDG2NCq8WJP0Iq1p6hfSSf//dfhWPnzlrp5f53jgoiK6MgeH
         /saOx40hFeDoDday4xXFMbW8Xf+hwu2XX9SeGn6h1FTgldgjlbVH7sbvd/Lv4mepwEqv
         Zv6Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mr.robertcole@icloud.com designates 17.58.63.166 as permitted sender) smtp.mailfrom=mr.robertcole@icloud.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735170364; x=1735775164;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q6jqAXS8l7w5FKKttBRSh6zHPjjgaZZZzwVoq7fjPGg=;
        b=bXCLlm3MYwY0H327UlsUpYGV9T1KkMIq/CoR6argwYZtBk1yfHdNJ/heLxXk5jpTv/
         AStVPyu+0TXS+H1eWchaKKO6iRso07b4uCj7+1jUP1s7lHXlW0GjYPJx2ODRVRR7fWqf
         NEnCl6/dHkhHC8WRrvUp4CZLBoPQmqmQih+5rN7WTM4q3XLNhKRumdyOuAIJUEZpD9vj
         LFZDP43X5zOYoEt1tFTGvTRUqzfFmeeFQuAejL4LyznLNP7cfjCvnxbbdlXL4RUBV+mU
         /IfElpR9n0n7AMpUpDk0uZ901P8M8ohAjvHfmv0o7qXsLSC4TxWScY+FJ13vhcPC25iH
         dnQQ==
X-Forwarded-Encrypted: i=2; AJvYcCV11h4+0t+ajCR1XRV/LP1WF0BZIc4dMscRTaFXtPxBqv41xrBjQLdsTp1chLr8ExZWiZWrog==@lfdr.de
X-Gm-Message-State: AOJu0YzSMLNjnS5ylycgf8XerYDSmTxZpXvXIwJUo3jy/59toJBJq+mj
	BpGwdldBv5GeQRTcC/Bzte6CASM66LsjvRL1snBL4Zp9o400iiLEYh3bT+nTBx0=
X-Google-Smtp-Source: AGHT+IH2x2wEgBcFeemrOpcsTIQvFdzQPa0XR+nKM80s6gviwNw4iTCx9UUBra/HGI2KYrjTYo5Zsw==
X-Received: by 2002:a05:6214:224d:b0:6d8:9ead:c665 with SMTP id 6a1803df08f44-6dd23356701mr365561026d6.27.1735170363624;
        Wed, 25 Dec 2024 15:46:03 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:f7c7:0:b0:6d8:89a6:8447 with SMTP id 6a1803df08f44-6dd153c23bels6502176d6.0.-pod-prod-02-us;
 Wed, 25 Dec 2024 15:46:02 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWZZjqc6OvMT94EGv7HC/3E96rplqLORB+sPi8XLTpx53ypayy/zsIwe7Yo7TYUwt78lniQn+4EZXRIKA==@gapps.redhat.com
X-Received: by 2002:a05:6214:224d:b0:6d8:9ead:c665 with SMTP id 6a1803df08f44-6dd23356701mr365560416d6.27.1735170362421;
        Wed, 25 Dec 2024 15:46:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735170362; cv=none;
        d=google.com; s=arc-20240605;
        b=RJWxIjpD07IHN/vlJQrtTIKXWH6JIJRH+vlgB7JF4izCHBr2VyHkh0f5WNU57cjJOB
         mpjKnii3hqXTWTU8qL2Do/bTsxG3fAKKU5bGR1YWEJvn5nKTsRmAQByPzuOp5CWkGeNi
         GIk2b4FAQQJvIBK1/amy853yXL0U7Q+URMMvHRV90Vo8TLhk2SWyYsQKt+ZUQZ0uuIQ+
         mynzx4FEdIgSf9ocg23ki45uFFxffw50lBZnwAHsKibuqfaq2CGqyMv7wLcK+af2zYyj
         cztooe0aD0SYRaZTUsnkE1F73weShbATE+5b2kAnALMIPc/FfE/YZQ7WUOkcoJAiZX9v
         3UJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=X6mxD7QR6hW83KZuRfKpbTtEKDXxuwjr8CWkgo8NNnE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=hzB6T6qoozSnHOtieY4ciq/58mg3AhqehsoruZQugUfvQZwjSgDBBlYxSFbnEdX7UU
         B8wyP8dUYMZE27NZKxNFenPOiSEw5boP2hks9IEpyMXw37zI9gOv+UYCg0RyNXEMRbTo
         VPHsO7d261BeM9blN9gLvUDnlrHx8emoanAJ4Gig81a90KHZwtrYib/ItMhv6hYfIJBv
         m8M1FD0hBmlKz8jtpvJ+gzdEDBdj2bPursR+qxN0G9eMjFoWaZ0EqNWCfGM5Rjk5Spmg
         eHYOsE4F9EnEk/Lc6uf4LbUVHAoYzeuvB9mk8iiwM1WL3sx6vW5/9sE9gC0ug3g0QNrb
         dvRA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mr.robertcole@icloud.com designates 17.58.63.166 as permitted sender) smtp.mailfrom=mr.robertcole@icloud.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1836fc1fsi166434526d6.549.2024.12.25.15.46.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Dec 2024 15:46:02 -0800 (PST)
Received-SPF: pass (google.com: domain of mr.robertcole@icloud.com designates 17.58.63.166 as permitted sender) client-ip=17.58.63.166;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-241-A9xvKqARMi2AYA5xuMaN4Q-1; Wed,
 25 Dec 2024 18:46:01 -0500
X-MC-Unique: A9xvKqARMi2AYA5xuMaN4Q-1
X-Mimecast-MFC-AGG-ID: A9xvKqARMi2AYA5xuMaN4Q
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6E211195608B
	for <blinux-list@gapps.redhat.com>; Wed, 25 Dec 2024 23:46:00 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5AC301956053; Wed, 25 Dec 2024 23:46:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 586B71956052
	for <blinux-list@redhat.com>; Wed, 25 Dec 2024 23:46:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D9E6D19560B4
	for <blinux-list@redhat.com>; Wed, 25 Dec 2024 23:45:59 +0000 (UTC)
Received: from st43p00im-zteg10062001.me.com (st43p00im-zteg10062001.me.com
 [17.58.63.166]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626-OdQsUMpuM5qbaSeLcX8-lw-1; Wed, 25 Dec 2024 18:45:57 -0500
X-MC-Unique: OdQsUMpuM5qbaSeLcX8-lw-1
X-Mimecast-MFC-AGG-ID: OdQsUMpuM5qbaSeLcX8-lw
Received: from smtpclient.apple (st43p00im-dlb-asmtp-mailmevip.me.com [17.42.251.41])
	by st43p00im-zteg10062001.me.com (Postfix) with ESMTPSA id 0EF1CC8023E
	for <blinux-list@redhat.com>; Wed, 25 Dec 2024 23:36:18 +0000 (UTC)
From: "mr.robertcole via blinux-list@redhat.com" <blinux-list@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Sound issues Linux Mint Mate on 2015 iMac
Message-Id: <DADB18F2-0118-452B-9F9F-94AA1FD95C26@icloud.com>
Date: Wed, 25 Dec 2024 18:35:57 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Proofpoint-GUID: K8uDJrOp_r-vIkLXAAvHPLgIGKkdh2fj
X-Proofpoint-ORIG-GUID: K8uDJrOp_r-vIkLXAAvHPLgIGKkdh2fj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-25_08,2024-12-24_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=946
 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 spamscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412250213
X-Mimecast-MFC-PROC-ID: t6EraLwWtWlKzrDrT1S3r2KhPjBHUkpYZeoXByGVRV0_1735170357
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -xL1ZEPKMn-KU_X8CeBwtUT-YsUP_bSvijzGFXqO8xs_1735170360
X-Mimecast-Originator: icloud.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mr.robertcole@icloud.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mr.robertcole@icloud.com designates 17.58.63.166 as permitted
 sender) smtp.mailfrom=mr.robertcole@icloud.com
X-Original-From: mr.robertcole@icloud.com
Reply-To: mr.robertcole@icloud.com
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

Dear List,
I installed Linux Mint Mate 22 on a 2015 iMac.
I had to plug in headphones on the back of the iMac to hear sound.
If I selected speakers the sound would stop. So I up arrowed back to the headphone option and checked the box and plugged  the headphones back in to hear sound.
Well, I knew better, but I was messing around with the hardware settings, & guess what? Yes, you got it! I have no sound.
Now I must wait until I can get someone to look at it.
So, Once they get the headphones working again, Do you have any ideas of why headphones work but the speakers will not?
Oh, I forgot to say that while entering the password at the log on screen, I get speech with the headphones, but after I hit the enter key to sign in, There is no more sound.

Thanks,
Rob

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

