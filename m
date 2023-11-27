Return-Path: <blinux-list+bncBDYPVTOXSQEBBAGFR6VQMGQECP4EFAQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE827F96CD
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 01:27:46 +0100 (CET)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-7c4481eb568sf357406241.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 16:27:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701044865; cv=pass;
        d=google.com; s=arc-20160816;
        b=ESDhxq4HQQJgrf0D7QUOE8bkwZWMCuFjMAKJMOUJUTKedffS9bQ48trB9z1UyBftJ/
         todFnrBbxzqmsR//9FlBdWwrOxDfLYxEtNd0iVt86BGGxmQEN8YWhCZpkwMEeFJU5A65
         eq6xV6boRvwTNEzHDUqIRwtANfjzvA4B8z0SA6JyHBsqmMWTukwkDyzzFAy88THmccVD
         cabQ4TyW10feJWK0Ph2NwAbEb7aoZSvePBFF1kVEx8rIulIgFBlzjLCHLAOpvToEQIzv
         Rl+MlnBl6Gs5BJwi0gsKI3bSuWzbcfluEdNHcIX4IQR/jmbdPrdIDkxYO2+aev19qB/5
         u5cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=wljycGroIlW/bVQuiBnnHkhVx4xIl/j+chw2g5T6sH4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=U9qP5OQkxtiXRK06Z0FAR7AUzDhE/CjuQAwm4pzaY9q/JLmZKyn3H5YpQUwEY46TfL
         RxHa6IWbCw84oIiavAikMLrLmzkhvO99bNSURLsssHDlVDFiStuzUu5Sj+IXoTxEg+jO
         NQ9V54PBXMjZEFihQSVMAaJDghQtIadQK0T7JADt7g02RUI2g3YX/ORENwmq+OUxu3g8
         /DxWeB4LHQlu1kS7K/lEJoKlwv3CW+a3Odsmk4mqoI6y+EG7Y0wooYP/BWycrYaODSIL
         YqR3UD+H4UJJuuIuGi28WRZGMGU+3sIzuFOMMzINdnPCVqWDhRxKVa4S1rrg3uVr7PwR
         8+Zg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701044865; x=1701649665;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wljycGroIlW/bVQuiBnnHkhVx4xIl/j+chw2g5T6sH4=;
        b=wD9PNI71XnzhJjSyJqFc/fWy/rC2JZIC6Or2YQMWSgPkJr0k32EBOAw2p9tC0mVYQb
         SBM3zQnBZ0knjBILXLe6btAxxFM77XEQgwJvpe8OaVUkOIqYrHPY3Vhi04AC4IR1cNqq
         qQKffOT7eVoNJ0Qz+2FyKlV0OCT4qgmcJA31upcLH2KHGLy77Vykb0xRouv6/FPW3Irt
         7rO5FR/O3c7ZzgG9im8R6aqAeyPmi/l5zWW2ro6zwCpV9ZZDAcMzPk7K/+P26L8r2+mh
         v1LGI+blvgqhMbUQ36O1NO8xe0nb4QL7CgDkJscgdQsDz32mniyLSOXNztGZAoFtgup8
         fkCw==
X-Gm-Message-State: AOJu0YyzHHFMPQqnZvnKF22XS52+SRcYvPhnGMWD/bPe9R7ZzX6T0f9P
	GIKPwP0d2mJrHqrq2VKgZo+wgw==
X-Google-Smtp-Source: AGHT+IGisIltMp/NTgAaBV9hWgvtoFNDRq2syxM/fow6Bfba9c55FmGlI6F8kqJi/i5hBejIC0F/cA==
X-Received: by 2002:a05:6122:4b08:b0:4ac:35ec:df6a with SMTP id fc8-20020a0561224b0800b004ac35ecdf6amr7561748vkb.1.1701044864854;
        Sun, 26 Nov 2023 16:27:44 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fe49:0:b0:679:e68a:ed80 with SMTP id u9-20020a0cfe49000000b00679e68aed80ls777387qvs.2.-pod-prod-02-us;
 Sun, 26 Nov 2023 16:27:44 -0800 (PST)
X-Received: by 2002:a0c:efc4:0:b0:679:d38d:d762 with SMTP id a4-20020a0cefc4000000b00679d38dd762mr10601138qvt.14.1701044864248;
        Sun, 26 Nov 2023 16:27:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701044864; cv=none;
        d=google.com; s=arc-20160816;
        b=suzLSAfJ6g8c3H50VIj6sKYbewdLJ+kIEQqpIc5hjdKFOt+0rIiPNcNsCb6rqXB/mF
         noZJpzPXkjC8NDYs8b+Q+/N9evpukyT64CXtvmkYnJCRdO0rS74jeaovV/R1CNIzlc28
         uNIuullhn4CE5H/ikrGYB6ZCddBXgNyFjGC38K5czG+zPWfdvb2wwBqmST8VGdaTuEzp
         YffgDsAgg/r1ajmPnfhNrqFDulXT11pKrHbebitCF3xfv1yumXAYyF+ZixxZfedVBgEV
         Td+Sj8kXkxfiL2tEMk7cqB2zJw7KqcRbID8gW348oVvtMwXHlPR28SIMky08fUcR6uKf
         jD/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=QqhUdoXeN6YwnKsS6lC58K179qRoonjQqMOVn7HI6mU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=iy6jpomnSwDYiMKw4bntQZrbcdw+F21i7smTgkTjIX4FaE9/d32gNxYMmyiiadDgwu
         PbXK+p3wuXuzoygjbY1uXTjq5syUBiaL8B4RQO8stzuaL3E3Vwt5ZNWlVvb3nyOloFOZ
         K0s/GIHiSpDv1Y4zH8d4HvVxfEww4HrB9lo/tmWzbm/94GY9JuSfFkg4tw/UzJEvlu5n
         /O1hYDg/eRn/+i/c7UvYz6XVoG71oGs2lK5zqXEvv3krX+x8W8fcdGSMU06u5nE7ynEV
         brt4vdfwkkPK3IBuYnGRTKrG1ts0mfhKPZ21JRxHtDN8PE+hkVhRBVfnEkxT0ZRWMWEB
         9nZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id qs13-20020a05620a394d00b0077da7a54e3asi1511749qkn.184.2023.11.26.16.27.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 16:27:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-413-T53yPYICNDqNkgCPWxeMrg-1; Sun, 26 Nov 2023 19:27:42 -0500
X-MC-Unique: T53yPYICNDqNkgCPWxeMrg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A276B185A782
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 00:27:42 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9F927C15984; Mon, 27 Nov 2023 00:27:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9820AC1596F
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:27:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D0E338049EE
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:27:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-625-b2qvGvfJOoCBZkhcI3nlDQ-1; Sun,
 26 Nov 2023 19:27:40 -0500
X-MC-Unique: b2qvGvfJOoCBZkhcI3nlDQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sdmd775QqztK3
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 19:27:39 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sdmd76bsZzcbc; Sun, 26 Nov 2023 19:27:39 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sdmd76TrQzcbC
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 19:27:39 -0500 (EST)
Date: Sun, 26 Nov 2023 19:27:39 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: edbrowse-git on archlinux
Message-ID: <b3770327-4b0c-fbd6-fee9-ac1fc61e799b@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

Another package that doesn't install here.  Many did and do install and
speculation is my build environment is messed up in some way but why a
messed build environment failed to break many more installs is something I
don't understand.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

