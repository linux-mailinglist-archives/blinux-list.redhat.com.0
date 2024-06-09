Return-Path: <blinux-list+bncBCRNHOFA7YJBB5N5SWZQMGQEPYZREFI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id D548A9014DD
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2024 09:51:19 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6f9962c97d1sf436209a34.3
        for <lists+blinux-list@lfdr.de>; Sun, 09 Jun 2024 00:51:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717919478; cv=pass;
        d=google.com; s=arc-20160816;
        b=desqYSyhYtYTkyblYKEjnIOg2YIxBMAd6deF8iLYy2zb/iqkZp+F/cU5Dg3j/g0DnM
         U0Gq+kb1JSPhbdDVI3TrCrFj7NoryjSkuWyVfS7ygSVy19y+cdk6SDRi7JgWZDK0K2iY
         MwjygXPrV/pPX2eLheD8c06rH6yugg+Cx276s+qSZImK/2HrVdVegfxaT/a+yuZpb5xj
         D8fapGpv5a7uJ790yBBdQeJK4K1KApwCXi/gKifwTQB9kqPFo6gj9wm+ORzyzHzwTDIL
         v0q6Wzafb6fLRzXEJb0kJxD+fZ2ZBhWv4mbCn9k51o8JouuJ1RPDWJahxfLdELEN6KON
         WUcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to;
        bh=XnMO6PMmAfoZ4NJbVEN93hqoRAYG6fphuF88PS12mHE=;
        fh=5x0Mpd6bItchE5wAAPgyopiU740vZLbAuJOEo3GyHhY=;
        b=Jm9T0trbDhKYnew/2Xppt4jcVAlgoG+ZDZozrxC3ZoKpqzrWgXV579Q/TtQDlY4yFX
         vOlufQ3cVSbVRmh4H7xqLJPKb77GShXhNU9zlI9tzD6cpAo35SIYWtg/R9KgmlxUjcv4
         m0aV0WFCskCX1c7r8I1/hSdRPEOSWPCCBqUGeF/DDTWoruQuxEJPxC1ocqjb2//AT5qI
         O1twqRspq3Z7W0djg1DLCy9xoU+vpCL2AeQ3jE2a3kMpp3FI7pB6/0/39c14Yb4Wa+A0
         AJyHk5s/fCOV3+feCFD8Xf5BE4Odr2JX9rs6V4pbkBitwr5F8YZzMtp1kkpWBalA2oON
         eE0Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717919478; x=1718524278;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:date:in-reply-to:from:subject:mime-version:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XnMO6PMmAfoZ4NJbVEN93hqoRAYG6fphuF88PS12mHE=;
        b=wD+2bPRI4ncnk4GQ7XASCWev+/J7XRB+bvCBdoqkyeDEiHgZ/rgJmaH/O9AWLAYJbI
         t00Ci6k5GD2Cc70K+8NrazH7T2ZjDzbsSZQX8GQ0HsVkDQOItBnPrqXkcRlwg4fBe7Ax
         J1iLMGSeudyvTX0iuveyckeL010bkzjxG1y5decUJ0UlUOkg3MQCXwGKHmBxpCXQR4jo
         ePf8wjr1rjxeQLshakHflkMPuyC4O+bf5QS0oGhjSXAVDrwpg5IRhd3feMW7t36nHyjP
         ctuIakwefhqAChQa9+uOUV3U5ALhEFjudzl9Us86RSoX5KQz6h8zi2EdewzW0KDaXGL0
         270w==
X-Forwarded-Encrypted: i=2; AJvYcCWI8iDkLkVb8yQNI7a5rJSf+jg8BT42r0OxHEObgP81PWgviAQMu/p82lKcQRjYwE/Dv8w83jT+FclmD3LDdz/3Fnvo1XANfr3h
X-Gm-Message-State: AOJu0Yy9lIkWI04MVzz1wJDb4M49QlLRVdk9TGet5o29MS8PdfSfin9N
	U/lmQSw1TnO7V2U+mGjlcKgZFIKSQ4rVcFpTtzvtW4gH+F5gN4skiE+MRajQnjM=
X-Google-Smtp-Source: AGHT+IG2byz7vcQiUhSUMBcgt9IP6ZA6i6UnzUmfQM/gLoBxiQdsNKE+i98wCdYrOvGa6y3m+Ps6ZQ==
X-Received: by 2002:a05:6830:3d10:b0:6ef:9159:8915 with SMTP id 46e09a7af769-6f9572fdb13mr6983165a34.37.1717919478176;
        Sun, 09 Jun 2024 00:51:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:27e1:b0:6a0:9d11:3b1b with SMTP id
 6a1803df08f44-6b05745e119ls40226196d6.2.-pod-prod-05-us; Sun, 09 Jun 2024
 00:51:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVOPSqmWpzqhzKxh/zqDqHkFtfV0ZIFJZvx9569D3Qep3z+BVPWgiHWuETPeMwyVUs+AbgXWB510VWGRa6Dh7NdbaLzSXHoq2mxjFp5
X-Received: by 2002:a05:6214:598e:b0:6b0:7a4a:4815 with SMTP id 6a1803df08f44-6b07a4a4a41mr4042416d6.28.1717919477180;
        Sun, 09 Jun 2024 00:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717919477; cv=none;
        d=google.com; s=arc-20160816;
        b=SgJTTqv4TgpFg91kM+b4gOS7q5xgY1NMYwGUXAXv7BlbMZHBs3924IaxsHSKgserzo
         xoqNB27tQpliVhsW0oNbdhMSdF7PmwujKAsxHb5cyBUVcTV8Wm/WBJPrOInZ7E1IObg+
         SbJoSzq7fNnu2gw7wcu/LCLI99rgxMXsEA/1wVLOLKBLximMIkd2Pq+9E4pR1VDnjVOw
         wFASLbVruf7856Ta6wxgNLO2pjY9KfA7JGY4ffHEai8J/CPx55oyhs4y33DoqvJbreK+
         xmNy4CjLV4UBQTb7yZXDxppta/NlM0Lr12jZ60AEX/WkITrym45hLiWXFwgpAJ+Ciyuc
         vRxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:references:message-id:date:in-reply-to
         :from:subject:mime-version:delivered-to;
        bh=9accgu+6VXTCGW3XjcE1zicGoXYbaAGh7yl8xblF6bo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=ftmBBLM33b3x7ei5ATH12NjJS9FnMON+dcaPGFqwGkDCsPMgJ+OBw5jfZZtasF+Zet
         meV/RdzHsY6HCjD1t2iqIFKbxIoBtru0cHZIe/QMR2osa6DoaYOJGzOwEYopNeDu3xBu
         1f5WTlM+h1bDAVPNqvjRa/TGAHZ2k3MlM2vFmCKiNOJ1Rm+2V2DOKPsm95t6oJxvy+iY
         IivKEG644DWnPzxlmIVqJYSPfxN8Md98Tf68F2bV8SqtLoW2MQSkA6xsy+d0Jtr1FWLk
         E8GaPh9vwjGRH9VCz/mukvuf8Yj+ygLzPey1DZnPehAbNDYCIBsPRVGluCIKQdIS7EqD
         O6CQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b04f63c7d3si78751376d6.104.2024.06.09.00.51.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jun 2024 00:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.161.53 as permitted sender) client-ip=209.85.161.53;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-110-Si4gk2XhPmSIUaIamNE__Q-1; Sun,
 09 Jun 2024 03:51:15 -0400
X-MC-Unique: Si4gk2XhPmSIUaIamNE__Q-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 58452195608D
	for <blinux-list@gapps.redhat.com>; Sun,  9 Jun 2024 07:51:14 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4A45B19560AE; Sun,  9 Jun 2024 07:51:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 47B3E19560AB
	for <blinux-list@redhat.com>; Sun,  9 Jun 2024 07:51:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8C74A195608E
	for <blinux-list@redhat.com>; Sun,  9 Jun 2024 07:51:13 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-360-aVQITksEN3u4fQnVNaf4-w-1; Sun, 09 Jun 2024 03:51:11 -0400
X-MC-Unique: aVQITksEN3u4fQnVNaf4-w-1
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5baf982f56dso61164eaf.3
        for <blinux-list@redhat.com>; Sun, 09 Jun 2024 00:51:10 -0700 (PDT)
X-Received: by 2002:a05:6870:c14e:b0:254:a917:cb38 with SMTP id 586e51a60fabf-254a917de7bmr2494427fac.27.1717919470055;
        Sun, 09 Jun 2024 00:51:10 -0700 (PDT)
Received: from smtpclient.apple ([50.54.220.1])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-703fd50bf8bsm5162543b3a.182.2024.06.09.00.51.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Jun 2024 00:51:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Subject: OT: "Feeling It Out And Being Right On The Money"
From: Rich Morin <rdm@cfcl.com>
In-Reply-To: <324ee61c-2792-435c-b05a-30ae5cf0784a@gmail.com>
Date: Sun, 9 Jun 2024 00:50:58 -0700
Message-Id: <F9E18969-6AB4-4537-BD10-BD09B62A70CF@cfcl.com>
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin>
 <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
 <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
 <324ee61c-2792-435c-b05a-30ae5cf0784a@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

I found this story to be quite impressive (and inspiring)...

Feeling It Out And Being Right On The Money
https://notalwaysright.com/feeling-it-out-and-being-right-on-the-money/331377/

-r

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

