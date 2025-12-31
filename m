Return-Path: <blinux-list+bncBDYIZZNASAHRBO7S2XFAMGQEQNMTD6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 6133FCEC7EF
	for <lists+blinux-list@lfdr.de>; Wed, 31 Dec 2025 20:27:58 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-88a366fa140sf542425946d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 31 Dec 2025 11:27:58 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767209277; cv=pass;
        d=google.com; s=arc-20240605;
        b=OVz8xQhZRG9jAHErFFWP2emKTr63ya6b2A8IWBwKxw44SIufblyGmoVyVDrS9406SY
         Iu6J9I3Tb13rHKG2V0quTM4G5Kb9B1UyxjftM7/PIPYpQGDBmvMQ0FazcjM48tBdG2yF
         Lxgvd8lOA/b8Nl30W5A3atDq984fP3RanHWN/YFLqP7T4eQBfruuLw2y+8p8iHMdj3S6
         rtISEFje5OPUuJQcfFUrhqsiyd6ad/ZD78OZHYQV9v9/T7nSiyARdmNMR9kw3nbucsnw
         K78/blNdb6gkRNZRQ9fKvTuizuq0UegE5NNR6GHhe6MxpZnYTzHlO+q5eKhYKuZSv2I4
         bSBw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:subject:from:references:to:user-agent:mime-version:date
         :message-id:delivered-to:sender:dkim-signature;
        bh=4hhJnD9Tj6p2FP67b3cuRRxelskqX6o2mg4bMR7jj/Y=;
        fh=CKDIzvxbu6rxx7uUzCdLOlXI+lKkWx/Oc+Cyn84zHG4=;
        b=AidBdm/QXyemuohtpBRoBTjQOOrBK7zIY94iHk+5StozNGgeEVON3HtUQSFR/heS4N
         v290AQKc5BEGVEkgr5mA7tCP7mXLIgER30kXNisp6a1wb2Q6zis4NtuEKNW7Lwi+5DO4
         SQIPvPeg5MlYU2D9jfUNaEYT9nuzwne+Hw8Rijrjk7/diWnOG6O7IYGFpOTY9SvLC9/+
         bn+ySi4+sDRoRdvqhyfkVjovYe++xs7JYll6fD4s0nMvdWMeyXjmEZD8fS8tS00zFtQi
         e2wCu1ynwdPEqrI6ZJ9weMV55/j2K0uVLpY2uu+bvsYpC0wE0lIT397iTPIzxDqBDNPM
         mZew==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="FrnC/Uyt";
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767209277; x=1767814077; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:content-language
         :in-reply-to:subject:from:references:to:user-agent:mime-version:date
         :message-id:delivered-to:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4hhJnD9Tj6p2FP67b3cuRRxelskqX6o2mg4bMR7jj/Y=;
        b=lRnAm6ylSgyYuq1noa7ldzxIV+GwRe+Qu0YLwFg9swQ8uWr/RnB1NYw89/O3hagZIT
         0bAmdjDsWaOjaLpXQLsDiLlau3e4k/+xQR6tdtm47RZuuCAWin0J6d7EUc8KWzBsoL84
         XGUAWRAqZlDTedBWpGtXH9P3RQiLbDaejr1XJDKabkul9+tl8tzwXZg3e6MdhMATKhkd
         TX2dnpfT/smCF3uMCAkstJlzE6II/GYZvJGC5IXMaOYReMJxXmv5mDyDHcfVb/RVhCMM
         MCOXXZ/wBvPLf0KOgyQj6TG0weqhh366BHSL6/HsGyIyVk+n4+g1fQCy02VjplH4vrbU
         BBug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767209277; x=1767814077;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:subject:from
         :references:to:user-agent:mime-version:date:message-id:x-gm-gg
         :delivered-to:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4hhJnD9Tj6p2FP67b3cuRRxelskqX6o2mg4bMR7jj/Y=;
        b=Hv+BrnEGc3FHVAc4/UnUchSXnnuM+pCBR4BAWtp+8dteI/cJQjWyNCLNv+uAtzJwdQ
         LG1mE6zB6qexZEU8tTuywmZ/hTu/ICOguKmZLwIlEuBjimrFXPUc5YR8XQHgVJRiTE2Y
         8RFxSdwMpHxNI1DelG5DGz74Oz1jUwyznqwcwAvKDISPYyEyjEx63cLRXxiVsQVbGhdI
         X57fy/cQYDAxQ9z9+YZ8qpmUaPrWMnG6G4vBvJO0QY9YV1bjlGLfO8wvQVABRUcch72J
         iuXc6h6OgMyx1T+hnpziaKPMUbHMx/GNUxBjGA3b/TEcwLr7fB0JtmAUly5G9mfBG2v8
         6sqg==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCUxm823k+kJIYNaUglrczpT7/xyiq4s7P4GihJVhNslqKHW5g/MVnyhL44xZEL0JNYd4bObKQ==@lfdr.de
X-Gm-Message-State: AOJu0Yzw1UNmTs2P6eFLp6iX7+rtRMysQej7XrDOM+SsnRtMKE6VYubJ
	DETjfQa7F7H90MDFvAHMI5en9w697kqJYMsNc0T4IjCcbYgg9F4ldQZc01K5uqOOgtg=
X-Google-Smtp-Source: AGHT+IEAxbG44u6lwRAN6cNcW8+2W5sEickUJNtKIvPpjw2/66xR0kmxMvi6b2mYaX8yDlFUH6Pa0Q==
X-Received: by 2002:a05:6214:1cce:b0:888:89fd:a727 with SMTP id 6a1803df08f44-88d83d651d8mr632541506d6.49.1767209276480;
        Wed, 31 Dec 2025 11:27:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWaxpchFXKvo1ZGuP5BXldgRagpeoKh5tbGa/Pmx31F4Mw=="
Received: by 2002:ad4:5f88:0:b0:888:1f20:6a87 with SMTP id 6a1803df08f44-89032dcbb42ls34006136d6.0.-pod-prod-04-us;
 Wed, 31 Dec 2025 11:27:55 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCU5JpzJFCH8lvGLmE4AK2e1TGeKUdC8l1oEXPvjba8Wdb4aKimWa9WGt9B4s9UVj3TBNYycKBfbi0XBog==@gapps.redhat.com
X-Received: by 2002:a05:620a:4484:b0:8bb:a037:fd8f with SMTP id af79cd13be357-8c08f340722mr5482112285a.0.1767209275251;
        Wed, 31 Dec 2025 11:27:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767209275; cv=pass;
        d=google.com; s=arc-20240605;
        b=Mm+3zt84IGFNNSJwjgLFyKarn25v8I3kGcxySRrAp4IuxC1QbF7q/NMCZJ3VY1Bn/V
         IeyAcX2QLA26aWXaVxcz/D23qeEfOKnSftMblwPF1/WIQLpwjtf50pjpGRKDayg5wr/N
         teq7moSbbpqWyWB27SY6vXM083LY23NfKA7pmzRPeaKFOWiwz+aFwJO/k0rziOrPNgtX
         sL3bpX+AXexrChI06y/uJ4OqGX6xC5TmbIHSTMkCodKHeC2xVvxL802mvYpZzY5zFg7t
         kV40Kwl3zK7vur6piHyAu86Wqtmr40ZBnPH/x4uw6lDi07GqYYWdq6yEOttzzWeXmDDp
         6rKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:subject:from
         :references:to:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=EwcnK8ZIoZe+1s0y0D4s0hpgmHkVuwi4BOKaO32kBkY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=CeW+j3tnvRqmGcETo+pM0SXy37LI54aE2R2V6mFZWgJnU4oA49Q2OZsn1B/A576RZt
         dd2HcRNlR/mIbqkzBGuKqE5DhHERRkJUEKQog7t2v/QMziwHPozNccUukztGEEKkreg/
         OtXTzFRQP6aSc6aUE+JJiQocmQt0MBcrKZ22gYXQXHKAzGm6IdpAFHD7JK0POdgIfMZx
         555gRg+/jV7fdPc1L2RXmJfvC/dmI/+GYsIb0QYClO6t7YPyFS7xkFXbr3uXDDNWi9h6
         NVXAp5+mR3HxPXmH7bC/VXSGNT+zHID5NvAVkU/IWt8OsS8XsZcWRYg+Ilp3lbKp6MbO
         RiKw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="FrnC/Uyt";
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-8c096eea8fcsi3724294185a.272.2025.12.31.11.27.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 11:27:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.53 as permitted sender) client-ip=209.85.219.53;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-SzpYjMHOMC6F2bka7TYOsg-1; Wed,
 31 Dec 2025 14:27:53 -0500
X-MC-Unique: SzpYjMHOMC6F2bka7TYOsg-1
X-Mimecast-MFC-AGG-ID: SzpYjMHOMC6F2bka7TYOsg_1767209273
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E6D8F180035A
	for <blinux-list@gapps.redhat.com>; Wed, 31 Dec 2025 19:27:52 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E209C30001A7; Wed, 31 Dec 2025 19:27:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DE93B30001A2
	for <blinux-list@redhat.com>; Wed, 31 Dec 2025 19:27:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4F69A19560B2
	for <blinux-list@redhat.com>; Wed, 31 Dec 2025 19:27:52 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767209271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=EwcnK8ZIoZe+1s0y0D4s0hpgmHkVuwi4BOKaO32kBkY=;
	b=EXbhxvOn9O1lR3QqwM2yXygYIUHEgACxCbzt9r3Y088SM3X34rmJ3oVNQHrDpswHO0UnV0
	g8xJHwRaIwaqIhtXYi41d1p0h4uxwfClQ3AYwy0cOK4LhdMVMtSh5pz41I9I2c/W0ypE0N
	p/0SSXkbwcpvueftBMscAzmx3UAO9TO7/OQUUMy1YApfllB5w85XraPr1Q5jlPJqda1TIi
	tlYi/l2HerDbXqtnrLaeBne6UjrGwOWfbC0qAqJqOxzgFyqssGkZB4l3EV3TFmWAwej0J1
	9Fitku6rQeRtlr6Bt/8xDpvN1mfRBvkCAbC+69dRXweO/eUjhAzNgZg44xXdUQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767209271; a=rsa-sha256;
	cv=none;
	b=DdP/vP0Wbr26/Z/PP3k/RS4khXJ4oT+Gwz7qMenudSLZQ5Qr7+jnhWGsaHskzN05EZPZ0M
	ctscJghnJXU1wrUfsiQmyQMqJ1iErpu8McPWV8kJr62fHOzICe0oTksvVB+Mk0LAoy4GKI
	kIVh71BaeMo1CdTCz3Q/axcyJNz3du3PjpB1Jg7VlbxjDVPI1P7WaSZYBTYhKsjpxXeYMN
	qlT4jgqVvxDAS9zDguGWGfmaGY2ebkCBQppbr+DF0tXn7EeXrimvy9oMVAsBRdYDpGz3p/
	Gy7cO0eyqjkckNvRv+SVXDB0LQDkvHLngyNtg1dAquqEUGXgXhpAsKs4VoIA7Q==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="FrnC/Uyt";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-668-oZqYZcwXN2atk5jZfnZyIg-1; Wed, 31 Dec 2025 14:27:48 -0500
X-MC-Unique: oZqYZcwXN2atk5jZfnZyIg-1
X-Mimecast-MFC-AGG-ID: oZqYZcwXN2atk5jZfnZyIg_1767209268
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-88a347c424aso146570306d6.0
        for <blinux-list@redhat.com>; Wed, 31 Dec 2025 11:27:48 -0800 (PST)
X-Gm-Gg: AY/fxX6LgcdAXGl+h+o1VIYsK1HsRrIgurwrv3dtFgZs5TWSVODYpE5eJoiBLjVwBu4
	WyK9vTIxlOP8nz1iEi2adj2RSKOEG4IxDaGDjcOHdZYCc2s9zbWF3n4qm54t+Jv0oT3iRmuQ/YR
	dKeFICZMi9S/ilNp+Bt/xoGnNaY6r6ViJrxthyMST9AAgK+51JbHT/wZ8x24a8SmtrwMYnFjKGk
	qJZw+EJzFSl2QNeJ/iGyXYqEgMHR93zASH5qsxJIuvb4VW25I1yMra+tZj+zPYABrhkhdkSeYxl
	olBk/NIT3QOeVV+UQoOknrvtQe2XG5CPJGeDdNA2WhqTOraQym5AbIKDXsfRW57UqMPm17rZSfb
	2fc7PBotkhlvu+TBRV6qzHh27XevCRRhE9WLUJR1TiQtmbm+RROw51Bhr98Ag2IuXXy0ylEl8ja
	r4UXs87gUCMgGQh1NIaTdlo9A/l0hhbLjug1ZeY+RlkV69lBlNqrpzH03ObMSgHezelnFkbF5vl
	5M84weR+My11xVb
X-Received: by 2002:ad4:5c48:0:b0:88a:3c0e:3251 with SMTP id 6a1803df08f44-88d8369d6ffmr578089206d6.32.1767209267887;
        Wed, 31 Dec 2025 11:27:47 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d99d7a08asm278304106d6.38.2025.12.31.11.27.47
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 11:27:47 -0800 (PST)
Message-ID: <a1213d9f-930c-43e7-af3f-571ff17798e8@gmail.com>
Date: Wed, 31 Dec 2025 13:27:46 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
 <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
From: rodney jackson <jackson.rodney.1970@gmail.com>
Subject: speech at login
In-Reply-To: <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: WAo5Y5aMwOUWrbzbQ6v_NcMUghoUuxdaoiiFQDIA3yI_1767209268
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="FrnC/Uyt";       arc=pass
 (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.219.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

I install opensuse tumbleweed using mate desktop.

i am having a problem with orca not turning on at login screen.

i tried alt+super+s

and it will not turn on.

once i am logged in the keystroke does toggle orca on and off.

so i did the below but still no speech at login. any help would be=20
appreciated Rodney

I added=C2=A0 the below lines=C2=A0 to the bottom of=20
/etc/lightdm/lightdm-gtk-greeter.conf
[greeter]
reader =3D orca --replace
a11y-states =3D +reader



To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

