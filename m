Return-Path: <blinux-list+bncBCFJ3VNT5EIBBYVZ5WWAMGQEIJ4NAUQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id B5108826744
	for <lists+blinux-list@lfdr.de>; Mon,  8 Jan 2024 03:24:41 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4299a9e7d53sf27881cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 07 Jan 2024 18:24:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1704680675; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0TJGULPTh096Lt2Ppi8x3ffeeIqizWMq7Nd5dWAbiHmyAi2mbY8MyG8cOUqgLZ6QM
         pIQBMIIUmLBrzyXB3d6tumT1A34+FDWeKQXIglsPVOxVXjfVnOxwHgr0y0o6Gh/5Dw7k
         3oSmFqqPpC4WPyJMKQ+e3prBOiPOHrChkEG+11j0m9fDo72tVNFVvijNca0yofzd+kT/
         zC8YilKmOwIgfIX3kjDFJY/ddQMoDjdLrXzVITKuKIhA9CC6Jz97/uYzEsE9qFSkBGx1
         tCt0hfiCWks8B1BbGElm9kOMLsiT9a8WFlJSGBDfWcuCOoqdxW31wtoHP9BLDU9sjLCx
         6Wmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=FCeZuvZfTyYpIMXtrCaQIRNDT09rozqVmfQ+IYmjkgs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=YTrsIc9NS6/6iZhBrxT1ZnYBrKdc3ILkV918VtlAswntbIuL9B8X1OOnzJblEzbC81
         iDHQ9/Nws7gD6KmDoxUlFk5kTubTrpQZ5/Lvpv+cBjyC3bB4JW/beGHdNe5spvQjs/LL
         YX95SRb0l4lXHyM1mraY3LO6SQ4b7WmwFvTjcbBAYjh/DAO719uEF5WFpjny2tnZM/Nj
         o06sJWQ0fUAeGqI8n1WhhqxKGsq65TsVRiAACnBan75/VsukNSNx8b2/w8KyzK01bZHi
         vTZj7m1GUbknimRlFRUAeDk+46aGwQbciC+j6M6QCxralJBhdndxePPvZtBA7NPH77YL
         c50w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704680675; x=1705285475;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FCeZuvZfTyYpIMXtrCaQIRNDT09rozqVmfQ+IYmjkgs=;
        b=CsqpKUEp/6ER2oXPu6Hs927nlKMyNBEORis/3RUZn7p5ZYIGR933nXrWVBRpmmJ0Vq
         aKCcvp6ZBGpzg3V918YOzxi61i78zgvR44COBAcGnqD5tT/jUtDTXjjJ00KyNhztLn6f
         VEuVRQrK875yfQwIWMIpPdUpJpQEn+IzfdkBgcmOHoMDZBpW1L+5sAR2O1aSHrOBn1TA
         xN/qlixUk4pVaxBKGXowi3c9hmTOMTj8jWFAnBYm+09tRzTWZ9MdSZqxrgoAh7PtJTD0
         koaFW44q+WU763oOXW0wXNWMCIjj0DaG+EbIk75ma3ZLfd9d/whCkyA5bWBG/67XL1oi
         q+kA==
X-Gm-Message-State: AOJu0Yx17PvmkcoDhXjtjXp2dAGxhsgla+hx7EqGs2UlXF6vlCbw54DC
	Q2+pHwP5pW1qzdON9yGJdBIZ8ZhfqP5FPg==
X-Google-Smtp-Source: AGHT+IGNwKsTJU6CSBl3j7+IZJrbKOt4OxdKtzmzqe+2fgADAfN7J3X4HAR6Bzs7agTKANAENVGf1w==
X-Received: by 2002:ac8:57c1:0:b0:429:9803:3f54 with SMTP id w1-20020ac857c1000000b0042998033f54mr643115qta.18.1704680675113;
        Sun, 07 Jan 2024 18:24:35 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:72d7:0:b0:427:e936:779e with SMTP id o23-20020ac872d7000000b00427e936779els961353qtp.2.-pod-prod-00-us;
 Sun, 07 Jan 2024 18:24:34 -0800 (PST)
X-Received: by 2002:a05:622a:14a:b0:428:3f54:5a26 with SMTP id v10-20020a05622a014a00b004283f545a26mr3806211qtw.58.1704680674301;
        Sun, 07 Jan 2024 18:24:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1704680674; cv=none;
        d=google.com; s=arc-20160816;
        b=ZTJvMQBn60UY+JXaPPYO9ApEjEJDjovh4WBoGrNvZmChHYl3e2BPV2qhBXxqwXBHxi
         +0DWrSK3QynC8ydEhidHlqaYCLckA9FdNllgkskdID7UIBTY6W6fS+q4fXTaB6NYtdiJ
         VKf4TIIcu2yqBVeVKoKhkAxKaGo2eCe8tcxhkhJqWKJ35KK/+Vw9Zm8M8FsBVsQMqcJ/
         tWG9QiacWaUO9buZHaiFg4zG5k6YTwiXmuPd7XTZIIfxEdarY+ssnHzryyx/lJxpexEa
         enrXoL8eMNu+n1MC43nydS1ebpBIba9tlyZDdZ5veWLzOP8OMuhPV+2tx/ZYV4HpqGIH
         6+Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=7rUy2iNxbx1JpfptqGY5xYFcdHDn8fvHaya3QKhLf3c=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=TNjQDQ+zGsEtBIIj5nEcDpI3lO3jPIsOv+cwrKn4vtmfk+jH/69nwVNzDb62fdLUz7
         I+CRrclvhrjdT/7JIdPIP5s5MJ+xI04/bAJ9W0Gn2U7bDmh1Xcod+iahb9kkGgzelevW
         cK74XwkPhm45WM6SVdZqtVZdxTzA3ZTI10V3x9Tvikq+f11F8ojWEWIkCEAx2uhI7sww
         avWhIAMoEPCeMA8RSpl+w1guE+cLJFW1SGcg1lT6SepUiD+NEoYsA6n6pszhO+cSxRtC
         BwU6NDUvli2lcA2fVGsGw9KTzKpwDh25PZoH0UoUsatPsdHcF9JREzcRynH9zhuscZXB
         zB3g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v16-20020ac85790000000b004297595bc29si6720203qta.488.2024.01.07.18.24.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jan 2024 18:24:34 -0800 (PST)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) client-ip=209.85.160.45;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-636-UXrlPFCVN2qcW6vnvOuD5g-1; Sun,
 07 Jan 2024 21:24:33 -0500
X-MC-Unique: UXrlPFCVN2qcW6vnvOuD5g-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CD4D381D4A7
	for <blinux-list@gapps.redhat.com>; Mon,  8 Jan 2024 02:24:32 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 993D2492BF0; Mon,  8 Jan 2024 02:24:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92523492BE6
	for <blinux-list@redhat.com>; Mon,  8 Jan 2024 02:24:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C9D5101AA49
	for <blinux-list@redhat.com>; Mon,  8 Jan 2024 02:24:32 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com
 [209.85.160.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-183-dNqtKamQOJuktpYgvsx0tA-1; Sun, 07 Jan 2024 21:24:18 -0500
X-MC-Unique: dNqtKamQOJuktpYgvsx0tA-1
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2041ed74956so1118919fac.0
        for <blinux-list@redhat.com>; Sun, 07 Jan 2024 18:24:18 -0800 (PST)
X-Received: by 2002:a05:6871:4910:b0:204:1a7f:13dc with SMTP id tw16-20020a056871491000b002041a7f13dcmr1939657oab.49.1704680657397;
        Sun, 07 Jan 2024 18:24:17 -0800 (PST)
Received: from smtpclient.apple (c-174-161-131-246.hsd1.tn.comcast.net. [174.161.131.246])
        by smtp.gmail.com with ESMTPSA id rd15-20020a056871620f00b002044a0677adsm1621032oab.8.2024.01.07.18.24.16
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jan 2024 18:24:17 -0800 (PST)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Subject: group e-mail settings
Message-Id: <DC7779B8-DA33-4323-B887-4713EEAA0D87@gmail.com>
Date: Sun, 7 Jan 2024 20:24:05 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I cannot remember how to check my e-mail settings in this group.
Originally I had e-mail going to one address, but now it goes to another one.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

