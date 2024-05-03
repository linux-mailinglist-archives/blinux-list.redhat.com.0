Return-Path: <blinux-list+bncBCHY5TMQ6YERBKNA2OYQMGQESG4JS7Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 084E28BABE0
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 13:53:17 +0200 (CEST)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-de603db5d6asf9114696276.2
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 04:53:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714737196; cv=pass;
        d=google.com; s=arc-20160816;
        b=iJHKvOK7RjeVo9gzix7cnBUw98cy8WVhIbA0K2PRlHC+P3v/la+z3hzku+qPxRGX4R
         Mc3vZ5/UkUAS/6yDz2gtgaCMAi7eR0+232VOr1SLDBwOrf3awKip4cel6PTUsEIkHuK2
         E/R9nAsuuC9aC/X2A4UGnQ6DNkJJYO/4m7c/0091VWO7HIVQBMwOejjDt/WCtQ/V0EJA
         VBjTOtyd6A0KoHk5lJhDgPcRLuXqvi0heO8yvFO69KYWRsnrJRFlTOjgkAVFUlppXeNK
         knEct+2SbhL0jImiFanKsRjl7NQzMq+7B9WYgla0LknqXwulZc3gZHJgh029pZkzqlC1
         THpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=BoDEqNawjk4lTj5bbxDh1m0kE0MWsCEATkOuXP5LC8k=;
        fh=JYRwCvnBYkIDFbMKTcP2isc05EVyRHGHnZGsaWXqXng=;
        b=QNkBbYBlR5MmCScvdnngj91J8bhx53lqcLYsbDD5AUya72f++4Mi1PDK4e5gGWevDo
         rodpUtsT1tOTVv5u4B6S/luD3HBB8r+ZUCIY+HnR/L7V1LInwdPyVCceg0G88bF7GARu
         rFl9rLAITj9T2EdXGhsWN1bfWF8gNhaZgbA5OtKwa4/1iQ83dBjDuV+gAB4WS+X3yTdC
         hGD5esICkaQ6u06pZH71SWypdwOoVWrgCrVCf1QTiajdl5dT+pBOluDRfRgb1oFEHJNV
         lp3nHUsDGC8EOhwmlnyfp2570g7nyr/SuDAzoE0gD0fs7G2UWJTnHwvZZkigEdJLmIs/
         NmXA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714737196; x=1715341996;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vd3vppCQd61xtMJvaQaxjR8lZACOb0LbqqO21Ta/v4M=;
        b=ICkFpHYR8W5k7WY2xgQoZWlOXPBHXVDI9Ux30x6zbnrwW4HnXPZCVorNZOh83XAcqX
         D08JcSMbPlTT32qYY4Wagj1G833d/9n6+MputsEqWOghYHi+br9SXJiBg2+55mRFU7z8
         LAVNFgU2dGRyPZq5fMzVEbe5YWv7jXw7JU3jbvl6qZD4I6jafeJrE/hIfd1yw3i85iYK
         IvCMNSBucYBR/OPY7fW1cId2fBDjjWs412jf3TeejLjScA+PkUeG3MK0vkByFtF/sZZF
         z4/3eRKkAr9aoKgWxDu6lcsNrMfsZK6P1iEn5gDa2fHUspx+Nrs+xkkJ5Swzk6DTzOXy
         b9zw==
X-Forwarded-Encrypted: i=2; AJvYcCXwp+bUK+bP2CxQqbMDlF8UJZIgxbQAK/G9JXQ2tM/QiQJaq3ZplaS544LxvqkqI45s3/GcfX8hJE5lpYFRs/gfVHUfGYTkUvEW
X-Gm-Message-State: AOJu0YyC/O6k11wy6EI/qbjQIudDnjAHnblviFqW6XZXBHXe6VIqDJ+r
	bLbCvwPzjngMMESnyegAuxQjIaXbwoZb/EjOr9Fia71WPm7v+hDnghzEtHolJsI=
X-Google-Smtp-Source: AGHT+IGo/lkoqgH/w8rc00J/JZn4v7Oclsq6dn8KTX6C7ZjG5szn20Nq/WBItgoc5Ki6276Hin+gTQ==
X-Received: by 2002:a25:804f:0:b0:de1:d52:ddfc with SMTP id a15-20020a25804f000000b00de10d52ddfcmr2960180ybn.29.1714737195335;
        Fri, 03 May 2024 04:53:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:69c6:0:b0:dcd:202d:6be8 with SMTP id 3f1490d57ef6-de8b54fa42bls203635276.2.-pod-prod-08-us;
 Fri, 03 May 2024 04:53:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW4pSI0pR89p6k0mlMpo3pc4aFoAVtV86Q3o06khgFLMkNQaKFwDJx4AhMeLBnmpDmQZqOjD+w0Z/DSoYFNgChUHloQ6tC9SDED3yjV
X-Received: by 2002:a25:2905:0:b0:deb:4164:1441 with SMTP id p5-20020a252905000000b00deb41641441mr1453901ybp.41.1714737193127;
        Fri, 03 May 2024 04:53:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714737193; cv=none;
        d=google.com; s=arc-20160816;
        b=PUfdD055mrUYcpj+oL4x3kekD70CyzoptYYz3NTjZmWp6N1xCgiMxiIxSn3tL/LkcL
         FhHRJe67yhz1NXrdukNC2jlXY/wm4/f/y2no+Z+KmiapzytpUWyHQHK0ZSOrG7yL3nSB
         RYdEQtAD5X8PuxUzIEkUC0fgZEGpgvkU33kwRz7tmMI/wyKApRy6pbdmkSp8xecRrTle
         VYRHGaJkL9izS6fmNHBav813ZdUsHqdJqj25wO08TKmqZXheIWD9dR3tVPPPciGc0BGT
         pHoembFs//7tCE5p2YL6q6q9zCsdI6kvKVZc+jy3KE+50arhFCtYhbmWs+jVVZpwVIz0
         rK1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=9QX1z2V6iePE4SlwZJ8r0T58ao1TW+y+sf3LzirMH+U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ueYJlr36n7sG+TuKR4lndQqvGXI1IdQ03WpgOZklU4/UJrNyyHBhFWF++Gt33i/1Bq
         xbZeLwwHCHmG8KlO88+sgM3dfSmvBX9kQHFhR1eEnZVDU52JDJexBmYGsiuo4Q2LWESc
         0UvDmrW//Myc9P7LCAQachE7F305wIm/zbYAeDRy4QCODXj3VSFjJvg50k17L9+n8aQG
         mypUE1ZR0gCL+gS5GJH2cJa89d3bhoKRerd6blp7pOHzSsXiXHE4CCxKECKiIOdnC5vb
         MgBA3a1grL3fIt7IbjqIup3PJ5DandrZYz5cWUuJO+XYyHNS35iPYIY6Qm/i+ET+4azn
         St6A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id g15-20020ac85d4f000000b00434ecf9f456si3163363qtx.574.2024.05.03.04.53.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 04:53:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-527-iy3P1fjiNIKwU_kX5ySNgA-1; Fri, 03 May 2024 07:53:09 -0400
X-MC-Unique: iy3P1fjiNIKwU_kX5ySNgA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F7EE1835E21
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 11:53:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0C2AB40C6CC1; Fri,  3 May 2024 11:53:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B0B540C6CC0
	for <blinux-list@redhat.com>; Fri,  3 May 2024 11:53:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4EE6310113E5
	for <blinux-list@redhat.com>; Fri,  3 May 2024 11:53:07 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-196-d8IMamluPT-ktl6b_VE9HA-1; Fri, 03 May 2024 07:53:04 -0400
X-MC-Unique: d8IMamluPT-ktl6b_VE9HA-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 1733F3FC22
	for <blinux-list@redhat.com>; Fri,  3 May 2024 14:52:59 +0300 (EEST)
Message-ID: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
Date: Fri, 3 May 2024 14:52:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Subject: nvda2 speech and debian install error
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: base64
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

aGkNCg0KSSBhbSB0cnlpbmcgdG8gY29tcGlsZSBudmRhMnNwZWVjaCBmb3IgZGViaWFuLCBidXQg
SSBnZXQgdGhlIGZvbGxvd2luZyANCmVycm9yIHdoZW4gcnVubmluZyBjb21waWxlLnNoLCBJIGhh
dmUgaW5zdGFsbGVkIGFsbCBkZXBlbmRlbmNpZXMuIEhvdyANCmNvdWxkIEkgc29sdmUgdGhpcyBw
cm9ibGVtDQoNCg0KQ29tcGlsaW5nIG52ZGEyc3BlZWNoZDY0LmRsbA0KQ29tcGlsaW5nIG52ZGEy
c3BlZWNoZDMyLmRsbA0KQ29tcGlsaW5nIG52ZGEyc3BlZWNoZA0KZXJyb3JbRTAzMDhdOiBtaXNt
YXRjaGVkIHR5cGVzDQogwqDCoCAtLT4gDQovaG9tZS9zeXNhZG1pbi8uY2FyZ28vcmVnaXN0cnkv
c3JjL2luZGV4LmNyYXRlcy5pby02ZjE3ZDIyYmJhMTUwMDFmL3NwZWVjaC1kaXNwYXRjaGVyLTAu
MTUuMS9zcmMvbGliLnJzOjI3MzozNg0KIMKgwqDCoCB8DQoyNzMgfMKgwqDCoMKgwqDCoMKgwqAg
KCpjKS5jYWxsYmFja19iZWdpbiA9IFNvbWUoY2IpOw0KIMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0tLS0gXl4gZXhw
ZWN0ZWQgZm4gcG9pbnRlciwgZm91bmQgDQpmbiBpdGVtDQogwqDCoMKgIHzCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KIMKgwqDC
oCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGFyZ3VtZW50cyB0byB0aGlzIGVudW0gdmFyaWFudCBhcmUgDQppbmNvcnJlY3QNCiDC
oMKgwqAgfA0KIMKgwqDCoCA9IG5vdGU6IGV4cGVjdGVkIGZuIHBvaW50ZXIgYHVuc2FmZSBleHRl
cm4gIkMiIGZuKHU2NCwgdTY0LCBfKWANCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGZvdW5kIGZuIGl0ZW0gYHVuc2FmZSBleHRlcm4gIkMiIGZuKHVzaXplLCB1c2l6ZSwgXykg
DQp7Y2J9YA0KaGVscDogdGhlIHR5cGUgY29uc3RydWN0ZWQgY29udGFpbnMgYHVuc2FmZSBleHRl
cm4gIkMiIGZuKHVzaXplLCB1c2l6ZSwgDQp1MzIpIHtjYn1gIGR1ZSB0byB0aGUgdHlwZSBvZiB0
aGUgYXJndW1lbnQgcGFzc2VkDQogwqDCoCAtLT4gDQovaG9tZS9zeXNhZG1pbi8uY2FyZ28vcmVn
aXN0cnkvc3JjL2luZGV4LmNyYXRlcy5pby02ZjE3ZDIyYmJhMTUwMDFmL3NwZWVjaC1kaXNwYXRj
aGVyLTAuMTUuMS9zcmMvbGliLnJzOjI3MzozMQ0KIMKgwqDCoCB8DQoyNzMgfMKgwqDCoMKgwqDC
oMKgwqAgKCpjKS5jYWxsYmFja19iZWdpbiA9IFNvbWUoY2IpOw0KIMKgwqDCoCB8wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5e
LS1eDQogwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhp
cyBhcmd1bWVudCBpbmZsdWVuY2VzIHRoZSANCnR5cGUgb2YgYFNvbWVgDQpub3RlOiB0dXBsZSB2
YXJpYW50IGRlZmluZWQgaGVyZQ0KIMKgwqAgLS0+IA0KL3J1c3RjLzliMDA5NTZlNTYwMDliYWIy
YWExNWQ3YmZmMTA5MTY1OTllM2Q2ZDYvbGlicmFyeS9jb3JlL3NyYy9vcHRpb24ucnM6NTgwOjUN
Cg0KZXJyb3JbRTAzMDhdOiBtaXNtYXRjaGVkIHR5cGVzDQogwqDCoCAtLT4gDQovaG9tZS9zeXNh
ZG1pbi8uY2FyZ28vcmVnaXN0cnkvc3JjL2luZGV4LmNyYXRlcy5pby02ZjE3ZDIyYmJhMTUwMDFm
L3NwZWVjaC1kaXNwYXRjaGVyLTAuMTUuMS9zcmMvbGliLnJzOjI3NDozNA0KIMKgwqDCoCB8DQoy
NzQgfMKgwqDCoMKgwqDCoMKgwqAgKCpjKS5jYWxsYmFja19lbmQgPSBTb21lKGNiKTsNCiDCoMKg
wqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0tLS0gXl4gZXhwZWN0ZWQgZm4gcG9pbnRlciwgZm91bmQgZm4gDQppdGVtDQogwqDCoMKg
IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8DQogwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBhcmd1bWVudHMgdG8gdGhpcyBlbnVtIHZhcmlhbnQgYXJlIA0KaW5jb3Jy
ZWN0DQogwqDCoMKgIHwNCiDCoMKgwqAgPSBub3RlOiBleHBlY3RlZCBmbiBwb2ludGVyIGB1bnNh
ZmUgZXh0ZXJuICJDIiBmbih1NjQsIHU2NCwgXylgDQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBmb3VuZCBmbiBpdGVtIGB1bnNhZmUgZXh0ZXJuICJDIiBmbih1c2l6ZSwgdXNp
emUsIF8pIA0Ke2NifWANCmhlbHA6IHRoZSB0eXBlIGNvbnN0cnVjdGVkIGNvbnRhaW5zIGB1bnNh
ZmUgZXh0ZXJuICJDIiBmbih1c2l6ZSwgdXNpemUsIA0KdTMyKSB7Y2J9YCBkdWUgdG8gdGhlIHR5
cGUgb2YgdGhlIGFyZ3VtZW50IHBhc3NlZA0KIMKgwqAgLS0+IA0KL2hvbWUvc3lzYWRtaW4vLmNh
cmdvL3JlZ2lzdHJ5L3NyYy9pbmRleC5jcmF0ZXMuaW8tNmYxN2QyMmJiYTE1MDAxZi9zcGVlY2gt
ZGlzcGF0Y2hlci0wLjE1LjEvc3JjL2xpYi5yczoyNzQ6MjkNCiDCoMKgwqAgfA0KMjc0IHzCoMKg
wqDCoMKgwqDCoMKgICgqYykuY2FsbGJhY2tfZW5kID0gU29tZShjYik7DQogwqDCoMKgIHzCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5e
Xi0tXg0KIMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aGlzIGFyZ3Vt
ZW50IGluZmx1ZW5jZXMgdGhlIA0KdHlwZSBvZiBgU29tZWANCm5vdGU6IHR1cGxlIHZhcmlhbnQg
ZGVmaW5lZCBoZXJlDQogwqDCoCAtLT4gDQovcnVzdGMvOWIwMDk1NmU1NjAwOWJhYjJhYTE1ZDdi
ZmYxMDkxNjU5OWUzZDZkNi9saWJyYXJ5L2NvcmUvc3JjL29wdGlvbi5yczo1ODA6NQ0KDQplcnJv
cltFMDMwOF06IG1pc21hdGNoZWQgdHlwZXMNCiDCoMKgIC0tPiANCi9ob21lL3N5c2FkbWluLy5j
YXJnby9yZWdpc3RyeS9zcmMvaW5kZXguY3JhdGVzLmlvLTZmMTdkMjJiYmExNTAwMWYvc3BlZWNo
LWRpc3BhdGNoZXItMC4xNS4xL3NyYy9saWIucnM6Mjc1OjM3DQogwqDCoMKgIHwNCjI3NSB8wqDC
oMKgwqDCoMKgwqDCoCAoKmMpLmNhbGxiYWNrX2NhbmNlbCA9IFNvbWUoY2IpOw0KIMKgwqDCoCB8
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLS0tLSBeXiBleHBlY3RlZCBmbiBwb2ludGVyLCBmb3VuZCANCmZuIGl0ZW0NCiDCoMKg
wqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHwNCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFyZ3VtZW50cyB0byB0aGlzIGVudW0gdmFyaWFu
dCBhcmUgDQppbmNvcnJlY3QNCiDCoMKgwqAgfA0KIMKgwqDCoCA9IG5vdGU6IGV4cGVjdGVkIGZu
IHBvaW50ZXIgYHVuc2FmZSBleHRlcm4gIkMiIGZuKHU2NCwgdTY0LCBfKWANCiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvdW5kIGZuIGl0ZW0gYHVuc2FmZSBleHRlcm4gIkMi
IGZuKHVzaXplLCB1c2l6ZSwgXykgDQp7Y2J9YA0KaGVscDogdGhlIHR5cGUgY29uc3RydWN0ZWQg
Y29udGFpbnMgYHVuc2FmZSBleHRlcm4gIkMiIGZuKHVzaXplLCB1c2l6ZSwgDQp1MzIpIHtjYn1g
IGR1ZSB0byB0aGUgdHlwZSBvZiB0aGUgYXJndW1lbnQgcGFzc2VkDQogwqDCoCAtLT4gDQovaG9t
ZS9zeXNhZG1pbi8uY2FyZ28vcmVnaXN0cnkvc3JjL2luZGV4LmNyYXRlcy5pby02ZjE3ZDIyYmJh
MTUwMDFmL3NwZWVjaC1kaXNwYXRjaGVyLTAuMTUuMS9zcmMvbGliLnJzOjI3NTozMg0KIMKgwqDC
oCB8DQoyNzUgfMKgwqDCoMKgwqDCoMKgwqAgKCpjKS5jYWxsYmFja19jYW5jZWwgPSBTb21lKGNi
KTsNCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eLS1eDQogwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0K
IMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoaXMgYXJndW1lbnQgaW5mbHVlbmNlcyB0aGUgDQp0
eXBlIG9mIGBTb21lYA0Kbm90ZTogdHVwbGUgdmFyaWFudCBkZWZpbmVkIGhlcmUNCiDCoMKgIC0t
PiANCi9ydXN0Yy85YjAwOTU2ZTU2MDA5YmFiMmFhMTVkN2JmZjEwOTE2NTk5ZTNkNmQ2L2xpYnJh
cnkvY29yZS9zcmMvb3B0aW9uLnJzOjU4MDo1DQoNCmVycm9yW0UwMzA4XTogbWlzbWF0Y2hlZCB0
eXBlcw0KIMKgwqAgLS0+IA0KL2hvbWUvc3lzYWRtaW4vLmNhcmdvL3JlZ2lzdHJ5L3NyYy9pbmRl
eC5jcmF0ZXMuaW8tNmYxN2QyMmJiYTE1MDAxZi9zcGVlY2gtZGlzcGF0Y2hlci0wLjE1LjEvc3Jj
L2xpYi5yczoyNzY6MzYNCiDCoMKgwqAgfA0KMjc2IHzCoMKgwqDCoMKgwqDCoMKgICgqYykuY2Fs
bGJhY2tfcGF1c2UgPSBTb21lKGNiKTsNCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtLS0tIF5eIGV4cGVjdGVkIGZu
IHBvaW50ZXIsIGZvdW5kIA0KZm4gaXRlbQ0KIMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCiDCoMKgwqAgfMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBh
cmd1bWVudHMgdG8gdGhpcyBlbnVtIHZhcmlhbnQgYXJlIA0KaW5jb3JyZWN0DQogwqDCoMKgIHwN
CiDCoMKgwqAgPSBub3RlOiBleHBlY3RlZCBmbiBwb2ludGVyIGB1bnNhZmUgZXh0ZXJuICJDIiBm
bih1NjQsIHU2NCwgXylgDQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3Vu
ZCBmbiBpdGVtIGB1bnNhZmUgZXh0ZXJuICJDIiBmbih1c2l6ZSwgdXNpemUsIF8pIA0Ke2NifWAN
CmhlbHA6IHRoZSB0eXBlIGNvbnN0cnVjdGVkIGNvbnRhaW5zIGB1bnNhZmUgZXh0ZXJuICJDIiBm
bih1c2l6ZSwgdXNpemUsIA0KdTMyKSB7Y2J9YCBkdWUgdG8gdGhlIHR5cGUgb2YgdGhlIGFyZ3Vt
ZW50IHBhc3NlZA0KIMKgwqAgLS0+IA0KL2hvbWUvc3lzYWRtaW4vLmNhcmdvL3JlZ2lzdHJ5L3Ny
Yy9pbmRleC5jcmF0ZXMuaW8tNmYxN2QyMmJiYTE1MDAxZi9zcGVlY2gtZGlzcGF0Y2hlci0wLjE1
LjEvc3JjL2xpYi5yczoyNzY6MzENCiDCoMKgwqAgfA0KMjc2IHzCoMKgwqDCoMKgwqDCoMKgICgq
YykuY2FsbGJhY2tfcGF1c2UgPSBTb21lKGNiKTsNCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXi0tXg0KIMKg
wqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8DQogwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoaXMgYXJndW1l
bnQgaW5mbHVlbmNlcyB0aGUgDQp0eXBlIG9mIGBTb21lYA0Kbm90ZTogdHVwbGUgdmFyaWFudCBk
ZWZpbmVkIGhlcmUNCiDCoMKgIC0tPiANCi9ydXN0Yy85YjAwOTU2ZTU2MDA5YmFiMmFhMTVkN2Jm
ZjEwOTE2NTk5ZTNkNmQ2L2xpYnJhcnkvY29yZS9zcmMvb3B0aW9uLnJzOjU4MDo1DQoNCmVycm9y
W0UwMzA4XTogbWlzbWF0Y2hlZCB0eXBlcw0KIMKgwqAgLS0+IA0KL2hvbWUvc3lzYWRtaW4vLmNh
cmdvL3JlZ2lzdHJ5L3NyYy9pbmRleC5jcmF0ZXMuaW8tNmYxN2QyMmJiYTE1MDAxZi9zcGVlY2gt
ZGlzcGF0Y2hlci0wLjE1LjEvc3JjL2xpYi5yczoyNzc6MzcNCiDCoMKgwqAgfA0KMjc3IHzCoMKg
wqDCoMKgwqDCoMKgICgqYykuY2FsbGJhY2tfcmVzdW1lID0gU29tZShjYik7DQogwqDCoMKgIHzC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtLS0tIF5eIGV4cGVjdGVkIGZuIHBvaW50ZXIsIGZvdW5kIA0KZm4gaXRlbQ0KIMKgwqDC
oCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfA0KIMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXJndW1lbnRzIHRvIHRoaXMgZW51bSB2YXJpYW50
IGFyZSANCmluY29ycmVjdA0KIMKgwqDCoCB8DQogwqDCoMKgID0gbm90ZTogZXhwZWN0ZWQgZm4g
cG9pbnRlciBgdW5zYWZlIGV4dGVybiAiQyIgZm4odTY0LCB1NjQsIF8pYA0KIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZm91bmQgZm4gaXRlbSBgdW5zYWZlIGV4dGVybiAiQyIg
Zm4odXNpemUsIHVzaXplLCBfKSANCntjYn1gDQpoZWxwOiB0aGUgdHlwZSBjb25zdHJ1Y3RlZCBj
b250YWlucyBgdW5zYWZlIGV4dGVybiAiQyIgZm4odXNpemUsIHVzaXplLCANCnUzMikge2NifWAg
ZHVlIHRvIHRoZSB0eXBlIG9mIHRoZSBhcmd1bWVudCBwYXNzZWQNCiDCoMKgIC0tPiANCi9ob21l
L3N5c2FkbWluLy5jYXJnby9yZWdpc3RyeS9zcmMvaW5kZXguY3JhdGVzLmlvLTZmMTdkMjJiYmEx
NTAwMWYvc3BlZWNoLWRpc3BhdGNoZXItMC4xNS4xL3NyYy9saWIucnM6Mjc3OjMyDQogwqDCoMKg
IHwNCjI3NyB8wqDCoMKgwqDCoMKgwqDCoCAoKmMpLmNhbGxiYWNrX3Jlc3VtZSA9IFNvbWUoY2Ip
Ow0KIMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgXl5eXl4tLV4NCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8DQog
wqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhpcyBhcmd1bWVudCBpbmZsdWVuY2VzIHRoZSANCnR5
cGUgb2YgYFNvbWVgDQpub3RlOiB0dXBsZSB2YXJpYW50IGRlZmluZWQgaGVyZQ0KIMKgwqAgLS0+
IA0KL3J1c3RjLzliMDA5NTZlNTYwMDliYWIyYWExNWQ3YmZmMTA5MTY1OTllM2Q2ZDYvbGlicmFy
eS9jb3JlL3NyYy9vcHRpb24ucnM6NTgwOjUNCg0KZXJyb3JbRTAzMDhdOiBtaXNtYXRjaGVkIHR5
cGVzDQogwqDCoCAtLT4gDQovaG9tZS9zeXNhZG1pbi8uY2FyZ28vcmVnaXN0cnkvc3JjL2luZGV4
LmNyYXRlcy5pby02ZjE3ZDIyYmJhMTUwMDFmL3NwZWVjaC1kaXNwYXRjaGVyLTAuMTUuMS9zcmMv
bGliLnJzOjI3ODozMw0KIMKgwqDCoCB8DQoyNzggfMKgwqDCoMKgwqDCoMKgwqAgKCpjKS5jYWxs
YmFja19pbSA9IFNvbWUoY2JfaW0pOw0KIMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0tLS0gXl5eXl4gZXhwZWN0ZWQgZm4gcG9p
bnRlciwgZm91bmQgDQpmbiBpdGVtDQogwqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KIMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFyZ3VtZW50cyB0byB0aGlz
IGVudW0gdmFyaWFudCBhcmUgDQppbmNvcnJlY3QNCiDCoMKgwqAgfA0KIMKgwqDCoCA9IG5vdGU6
IGV4cGVjdGVkIGZuIHBvaW50ZXIgYHVuc2FmZSBleHRlcm4gIkMiIGZuKHU2NCwgdTY0LCBfLCBf
KWANCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvdW5kIGZuIGl0ZW0gYHVu
c2FmZSBleHRlcm4gIkMiIGZuKHVzaXplLCB1c2l6ZSwgXywgDQpfKSB7Y2JfaW19YA0KaGVscDog
dGhlIHR5cGUgY29uc3RydWN0ZWQgY29udGFpbnMgYHVuc2FmZSBleHRlcm4gIkMiIGZuKHVzaXpl
LCB1c2l6ZSwgDQp1MzIsICptdXQgaTgpIHtjYl9pbX1gIGR1ZSB0byB0aGUgdHlwZSBvZiB0aGUg
YXJndW1lbnQgcGFzc2VkDQogwqDCoCAtLT4gDQovaG9tZS9zeXNhZG1pbi8uY2FyZ28vcmVnaXN0
cnkvc3JjL2luZGV4LmNyYXRlcy5pby02ZjE3ZDIyYmJhMTUwMDFmL3NwZWVjaC1kaXNwYXRjaGVy
LTAuMTUuMS9zcmMvbGliLnJzOjI3ODoyOA0KIMKgwqDCoCB8DQoyNzggfMKgwqDCoMKgwqDCoMKg
wqAgKCpjKS5jYWxsYmFja19pbSA9IFNvbWUoY2JfaW0pOw0KIMKgwqDCoCB8wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5eXl5eLS0tLS1eDQog
wqDCoMKgIHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHwNCiDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhpcyBhcmd1bWVudCBpbmZsdWVu
Y2VzIHRoZSB0eXBlIA0Kb2YgYFNvbWVgDQpub3RlOiB0dXBsZSB2YXJpYW50IGRlZmluZWQgaGVy
ZQ0KIMKgwqAgLS0+IA0KL3J1c3RjLzliMDA5NTZlNTYwMDliYWIyYWExNWQ3YmZmMTA5MTY1OTll
M2Q2ZDYvbGlicmFyeS9jb3JlL3NyYy9vcHRpb24ucnM6NTgwOjUNCg0KRm9yIG1vcmUgaW5mb3Jt
YXRpb24gYWJvdXQgdGhpcyBlcnJvciwgdHJ5IGBydXN0YyAtLWV4cGxhaW4gRTAzMDhgLg0KZXJy
b3I6IGNvdWxkIG5vdCBjb21waWxlIGBzcGVlY2gtZGlzcGF0Y2hlcmAgKGxpYikgZHVlIHRvIDYg
cHJldmlvdXMgZXJyb3JzDQpjcDogY2Fubm90IHN0YXQgJ3RhcmdldC9yZWxlYXNlL252ZGEyc3Bl
ZWNoZCc6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCg0KaHR0cHM6Ly9naXRodWIuY29tL1Jh
c3Rpc2xhdktpc2gvbnZkYTJzcGVlY2hkDQoNCkVsaWFzDQoNClRvIHVuc3Vic2NyaWJlIGZyb20g
dGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1h
aWwgdG8gYmxpbnV4LWxpc3QrdW5zdWJzY3JpYmVAcmVkaGF0LmNvbS4K
