Return-Path: <blinux-list+bncBDX2LR4P5UIBBY7NQW6AMGQE3TGLIHI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E80A09BF3
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 20:37:10 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d88833dffcsf39750136d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 11:37:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736537829; cv=pass;
        d=google.com; s=arc-20240605;
        b=MSRpDX5OIyJT/j7OUOY4Edgri6LXBD86iMSkgc7//5rmUwXj97j2tcMh18yd3dVnyG
         W4u0QdSrKh04y0lrsWaQ5rwgBRCFkBVqkBbEL+dQxi/i+Kg8xMxqhrKEKhF1b+CqZvju
         49QhF+s+rRhABV3NWFXb2f2zi8z3Dk23Ar1QBaB5Hzkr4abKJPqKOcRh9m6p1vFX8aiX
         DEeS5thJQ0qjD+goI2drWQpFa+nTZ/90ebOO2H+sHd4ktxBxorhDr2dBsGkhmf/gvSyR
         NbktrGnANB5WUAwVrtO1tDu0YgI5CWvbYPHAM2XjstnXuAqksVsG/IHmmDecd00P88Hj
         X3jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=hQ/sMpMuf6buoZfWajm6GB+iL4Y+PK9yNiCCUNbaYiw=;
        fh=RJ7DQqDEs0jT8fwxjXVy/D1yvWbDP7GMQmgyvIHlS0w=;
        b=kcR1zsx3/gSM1oa70aym0Atk5GF7Hv/fEi5mRuRKXnjv3MZJxgtZDXwH6xCUPRgBAM
         6ZVdKKCONYUAceUGwe/EjSFhHXK3gZ2AzIXqFwS7GwApsmDD4sC5I0JMGxbukPSHUNJF
         LE64HUHyDfeQNDYZtLKksf04lWWNzSS2yadXdCO3xYfxXa3+5mQCcLXwtef3v7+2/w1C
         bh7MgfER7LYGSUxQvTdj2iSaZ5ucqZCQhkhwUsw7/TMVCUGUATkawGjsdu5zr7pygSuL
         KjLdi3JlqQXLXsYkqLEehujnbzx/IWRn1twzDJKNIaEUMTLnJ3uFA6E8dRpvwGKxrSQb
         d9Sw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736537829; x=1737142629;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hQ/sMpMuf6buoZfWajm6GB+iL4Y+PK9yNiCCUNbaYiw=;
        b=ixqOy/VIIqfSBH4nZz4uLMkI3GcAMuGKA2c6xQA6iD8RBjt+kWuLYOM4gDHAC4BUzH
         GUaJWxtAWueA1bT7fep5ZfnedpdXcwi2P+B8tyd62yY4K5zx/g9gtapNtdjaaOU+1uF2
         E7eOyfwgGEA2o6+BJsXjDxA8HqPNkm2tUKbdt2/CTwxmVp6gUhnzudANvkUSpPnLiiY0
         g/BEF76F4qcvwbqqdpxIQ27FR2yMQqKXGfHXlN39uZwjFD2fr6iVG/SAUWlfnj3Pmqf2
         jDLGuAUeVmtC1O5I2ALct4XGS7ofhRyNSFk0SRfu0uJb6OhoO2OaUr9gjQjMBNYrD4RH
         lrPQ==
X-Forwarded-Encrypted: i=2; AJvYcCVjFxroq+nKBCnAcenumxjO8iHThF6TeqLo5JBRZDhGInh33+QIXDzHkW8vXsp8FJffBcEBGg==@lfdr.de
X-Gm-Message-State: AOJu0YxW0p+M1vxrbz5q+FMYbeJDdcxucWN8pyrnHAPvls9Ek43PQLfZ
	yrUHyVR5jVdX4gmpsJTqA3ScWD4cTknJ3YjhWS4Sh5n0wqXZeTd7Hs0l9rzblz4=
X-Google-Smtp-Source: AGHT+IERsYiTJo2/IZtBFNN0CJYIQm4ySN+O8TbdX/74xicybQz9CY1iHziqYTxXRekED0+PNsOlcg==
X-Received: by 2002:a05:6214:f2c:b0:6dd:d24:305c with SMTP id 6a1803df08f44-6df9b2b2c4fmr198260446d6.37.1736537828360;
        Fri, 10 Jan 2025 11:37:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2510:b0:467:8ca0:7f4b with SMTP id
 d75a77b69052e-46c7ab9ec7els44995571cf.2.-pod-prod-01-us; Fri, 10 Jan 2025
 11:37:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVLl8xUjvmGR/6pNdHSzJrnsXp72DlU6KPEnaqz9/fHQSXIKMMTQgcqffo18OGjju0fYc8/Vw4Tpfr9dg==@gapps.redhat.com
X-Received: by 2002:a05:6102:370f:b0:4b3:c658:2a36 with SMTP id ada2fe7eead31-4b3d0f8f840mr11542735137.8.1736537827220;
        Fri, 10 Jan 2025 11:37:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736537827; cv=none;
        d=google.com; s=arc-20240605;
        b=gqcs76TXBKdvuQSU3CdNiJdEctyTMgeImie1dqVF5R23FvJLNT4ZOrsBo8liAD2eFW
         JSVhD4kWh60ZuOPs83D3vmolZAF/Ia1M0206T9HwGf2PjnBrfPdKkA6SASgcRlbuKMd2
         +JtgbZ9OwyDzpjRlAqJhfWG2mqrBStR5d8y7kWTSvQX7eRlY9zkJKaLG/lNh8cCtuxY8
         eNOM3PCAbD3jACJ0rmu2WLekqi091QNrEYH7d7Q4FHASr8pcYvP4Q9LKMpPu+DcxeAsO
         m3wCn427KsroBB/4bLcM0gOTFvSjQVggfa7+Kk2x9gf4p8/aSGNODbFXoPnjQ9KI+dRa
         bpMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=61jqUSWKT9qGSzqCjzo9yEhittZVNly/off2wqrCCd4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=SieCQ5BSXtW4OnK6cNFRW8+qKmfzZI5yiHFBlegxhyhGnDZop1xX+EOCIj9gt55coe
         dDbXKJ00aOXAG2HYm/YmbNpc9hlj985e3oulVnMP1vU1n8CWBgyc2718a6CW/S6+0qyJ
         IU8L/jz45qCTunXHygNbyOHM8i4s5OPgtDFjj48QxRjGQBEFYyAW/7JKERD0i/PtSkYR
         BKNSykn3p/bpZOC9pzNEB8MvcxDhQWPCQTigc8/m+d1UJ5/e9kFjclyhELl6cSkupLDo
         5B1aA+WYIi0uLy3EBiHAcNFgR4VIl+OIAVrFYNlRAeOSFs8qIXCUU4kA1e5k6oR6u4Z6
         /fRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Received: from us-smtp-inbound-delivery-1.mimecast.com ([170.10.132.60])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b609382f69si2083111137.578.2025.01.10.11.37.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 11:37:07 -0800 (PST)
Received-SPF: pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) client-ip=173.255.224.66;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-6-QP7P_wzlP4OLi6hmQUFBGg-1; Fri,
 10 Jan 2025 14:37:05 -0500
X-MC-Unique: QP7P_wzlP4OLi6hmQUFBGg-1
X-Mimecast-MFC-AGG-ID: QP7P_wzlP4OLi6hmQUFBGg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 76EC719560A1
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 19:37:04 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 70A2D195E3DE; Fri, 10 Jan 2025 19:37:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6E5D8195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 19:37:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C588219560B2
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 19:37:03 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
 [173.255.224.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-110-U7TGkvZlOYy690BPzDWDWg-1; Fri, 10 Jan 2025 14:37:01 -0500
X-MC-Unique: U7TGkvZlOYy690BPzDWDWg-1
X-Mimecast-MFC-AGG-ID: U7TGkvZlOYy690BPzDWDWg
Received: from [192.168.126.128] (unknown [176.230.58.49])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 5C5A7A265473
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 19:37:00 +0000 (UTC)
Date: Fri, 10 Jan 2025 21:36:58 +0200 (IST)
From: Geoff Shang <geoff@QuiteLikely.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: List problems and a suggestion
In-Reply-To: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
Message-ID: <ee5bf675-a2e6-eb1d-7a04-1e19bdc896e5@QuiteLikely.com>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: IYgXXkG8obCYvt2eqE-swMA47Gf18FnqRPEEwjHmE7k_1736537821
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OX6_1vPmvuOLwNGImymBmv4zTy0d2OSEVK-XE3HXBPg_1736537824
X-Mimecast-Originator: quitelikely.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: geoff@quitelikely.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geoff@quitelikely.com designates 173.255.224.66 as permitted
 sender) smtp.mailfrom=geoff@quitelikely.com
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

On Fri, 10 Jan 2025, 'Cleverson Casarin Uliana' via blinux-list@redhat.com wrote:

> Hi, I'm about to retire this e-mail address which is subscribed to this 
> group. I'm unable to do any operation such as unsubscribe this e-mail, 
> subscribe another one, or even turn vacation mode on.

What happens when you try?

> I recall someone suggested to create another group to replace this one. That 
> would be good for me too, though I believe another option is you all 
> subscribe to a group like Stormux at groups.io, and use that for general 
> discussions.

I'd be opposed to that unless there were technilcal reasons that made this 
list unviable.

This list has been around for a very long time and its existance is 
likely documented in many places.

The stormux group sounds like it's intended for a specific distro, which 
is fine, but I don't think it makes sense to coopt that for general 
discussion, as the name would suggest that it's  distro-specific.

Hopefully a list admin is reading the list and can help you with your 
issue.

Otherwise, the list headers say that you should be able to reach the list 
owner at blinux-list+owners@redhat.com

they also say that you can write to blinux-list+help@redhat.com

HTH,
Geoff.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

